package controllers;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import com.fasterxml.jackson.databind.node.ObjectNode;
import models.IOExamples;
import models.LearningResult;
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
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletionStage;

import static akka.pattern.Patterns.ask;
import static controllers.StatusProtocol.StatusQuery;
import static controllers.StatusProtocol.StatusResult;

/**
 * This controller contains an action to handle HTTP requests
 * to the application's home page.
 */
@Singleton
public class HomeController extends Controller {

    @Inject
    FormFactory formFactory;
    private final ActorSystem system;
    private final static int TIMEOUT = 180000; // 180 sec timeout;

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
    public Result index() {
        IOExamples examples = new IOExamples();
        Form<IOExamples> formData = formFactory.form(IOExamples.class).fill(examples);
        List<String> emptyHaskell = new ArrayList<>();

        return ok(main.render(
                "A Haskell Code Generator from I/O Examples",
                formData,
                emptyHaskell,
                false
        ));
    }

    public Result runLearningTask() {
        Form<IOExamples> formData = formFactory.form(IOExamples.class).bindFromRequest();
        IOExamples examples = formData.get();
        ActorRef learningActor = system.actorOf(ConstraintLearningProcessor.props);

        learningActor.tell(examples, learningActor);

        System.out.println(learningActor.path());

        /*return ok(main.render(
                "A Haskell Code Generator from I/O Examples",
                formData,
                emptyHaskell,
                true,
                "\"" + learningActor.path().name() + "\""
        ));*/

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
                Form<IOExamples> returnedData = formFactory.form(IOExamples.class).fill(learned.getCompletedExamples());

                return ok(pageBody.render(returnedData, learned.getGeneratedHaskell()));
            } else {
                //Return a 202 Accepted Header as learning is in progress
                return Results.status(202);
            }
        });
    }

    public Result removeActor(String uuid) {
        System.out.println("Deleting " + uuid);

        uuid =  "akka://application/user/" + uuid;

        try {
            ActorRef actorToStop = system.actorFor(uuid);
            system.stop(actorToStop);
        } catch (Exception e) {
            return notFound();
        }
        return ok();
    }
}
