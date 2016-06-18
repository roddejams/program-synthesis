package controllers;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import com.fasterxml.jackson.databind.node.ObjectNode;
import models.IOExamples;
import models.LearningResult;
import models.rules.ChoiceRule;
import org.apache.commons.io.FileUtils;
import play.data.Form;
import play.data.FormFactory;
import play.libs.Json;
import play.mvc.Controller;
import play.mvc.Result;
import play.mvc.Results;
import scala.compat.java8.FutureConverters;
import views.html.main;
import views.html.pageBody;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletionStage;

import static akka.pattern.Patterns.ask;
import static controllers.StatusProtocol.*;

/**
 * This controller contains an action to handle HTTP requests
 * to the application's home page.
 */
@Singleton
public class HomeController extends Controller {

    @Inject
    FormFactory formFactory;
    private final ActorSystem system;
    private final static int TIMEOUT = 1800000; // 180 sec timeout;

    private List<String> selectedFunctionNames = new ArrayList<>();
    private Map<String, List<ChoiceRule>> learnedFunctions = new HashMap<>();

    @Inject
    public HomeController(ActorSystem system) {
        this.system = system;
    }

    /**
     * An action that renders an HTML page with a welcome message.
     * The configuration in the <code>routes</code> file means that
     * this method will be called when the application receives a
     * <code>GET</code> request with a path of <code>/</code>.
     */
    public Result index() throws IOException {
        IOExamples examples = new IOExamples();
        examples.setUseAddition(true);
        examples.setUseSubtraction(true);
        examples.setUseMultiplication(true);
        examples.setUseDivision(true);
        examples.setUseTailRecursion(false);
        Form<IOExamples> formData = formFactory.form(IOExamples.class).fill(examples);
        List<String> emptyHaskell = new ArrayList<>();

        Path ruleFile = Paths.get("ASP/learned_functions.lp");
        Files.write(ruleFile, "".getBytes());

        return ok(main.render(
                "A Haskell Code Generator from I/O Examples",
                formData,
                emptyHaskell,
                false
        ));
    }

    public Result runLearningTask(String uuid) {
        Form<IOExamples> formData = formFactory.form(IOExamples.class).bindFromRequest();
        IOExamples examples = formData.get();

	    ActorRef learningActor;

        if(uuid.equals("new_task")) {
	        learningActor = system.actorOf(ConstraintLearningProcessor.props);
	    } else {
            uuid =  "akka://application/user/" + uuid;
	        learningActor = system.actorFor(uuid);
        }

        learningActor.tell(examples, learningActor);

        System.out.println(learningActor.path());

        ObjectNode result = Json.newObject();
        result.put("uuid", learningActor.path().name());

        return Results.status(202, result);
    }

    public CompletionStage<Result> getStatus(String uuid) {
        uuid =  "akka://application/user/" + uuid;
        ActorRef learningActor = system.actorFor(uuid);

        return FutureConverters.toJava(ask(learningActor, new StatusQuery(), TIMEOUT)).thenApply( response -> {
            StatusResult result = (StatusResult) response;
            if(result.finished) {
                LearningResult learned = result.result;
                learnedFunctions.put(learned.getCompletedExamples().getName(), learned.getGeneratedASP());

                Form<IOExamples> returnedData = formFactory.form(IOExamples.class).fill(learned.getCompletedExamples());

                return ok(pageBody.render(returnedData, learned.getGeneratedHaskell()));
            } else {
                //Return a 202 Accepted Header as learning is in progress
                return Results.status(202);
            }
        });
    }

    public Result addRuleToBackground(String name) throws IOException {
        name = name.toLowerCase();
        if(learnedFunctions.keySet().contains(name)) {
            selectedFunctionNames.add(name);
        }

        Path ruleFile = Paths.get("ASP/learned_functions.lp");
        Files.write(ruleFile, "".getBytes());

        String firstline = "% ";
        for(String fnName : selectedFunctionNames) {
            firstline += fnName + " ";
        }
        firstline += "\n";

        write(ruleFile, firstline);

        for(String fnName : selectedFunctionNames) {
            List<ChoiceRule> rules = learnedFunctions.get(fnName);
            for(ChoiceRule rule : rules) {
                write(ruleFile, rule.toLearnableString());
            }
        }

        System.out.println("Added rule to background : " + name);
        return ok();
    }

    public Result removeActor(String uuid) {
        System.out.println("Deleting " + uuid);

        uuid = "akka://application/user/" + uuid;

        try {
            ActorRef actorToStop = system.actorFor(uuid);
            system.stop(actorToStop);
        } catch (Exception e) {
            return notFound();
        }
        return ok();
    }

    public CompletionStage<Result> downloadHaskell(String uuid) {
        uuid = "akka://application/user/" + uuid;

        ActorRef actorToDownload = system.actorFor(uuid);

        return FutureConverters.toJava(ask(actorToDownload, new FileQuery(), TIMEOUT)).thenApply(response -> {
            DownloadResult result = (DownloadResult) response;
            Path fileToDownload = Paths.get(String.format("../ASP/%s.hs", result.fnName));

            try {
                FileUtils.copyFile(result.file.toFile(), fileToDownload.toFile());
            } catch (IOException e) {
                e.printStackTrace();
            }

            return ok(fileToDownload.toFile());
        });
    }

    protected static void write(Path file, String line) throws IOException {
        Files.write(file, line.getBytes(StandardCharsets.UTF_8), StandardOpenOption.APPEND);
    }
}
