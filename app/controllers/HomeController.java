package controllers;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import models.IOExamples;
import models.LearningResult;
import play.data.Form;
import play.data.FormFactory;
import play.mvc.Controller;
import play.mvc.Result;
import play.mvc.Results;
import scala.compat.java8.FutureConverters;
import views.html.main;
import views.html.dynamicTable;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletionStage;

import static akka.pattern.Patterns.ask;
import static controllers.StatusProtocol.*;
import static controllers.StatusProtocol.StatusQuery;

/**
 * This controller contains an action to handle HTTP requests
 * to the application's home page.
 */
@Singleton
public class HomeController extends Controller {

    @Inject
    FormFactory formFactory;
    final ActorRef learningActor;
    private final static int TIMEOUT = 180000; // 180 sec timeout;

    @Inject
    public HomeController(ActorSystem system) {
        learningActor = system.actorOf(LearningProcessor.props);
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
        List<String> emptyHaskell = new ArrayList<>();

        learningActor.tell(examples, learningActor);

        return ok(main.render(
                "A Haskell Code Generator from I/O Examples",
                formData,
                emptyHaskell,
                true
        ));
    }

    public CompletionStage<Result> getStatus() {
        return FutureConverters.toJava(ask(learningActor, new StatusQuery(), TIMEOUT)).thenApply( response -> {
            StatusResult result = (StatusResult) response;
            if(result.finished) {
                LearningResult learned = result.result;
                Form<IOExamples> returnedData = formFactory.form(IOExamples.class).fill(learned.getCompletedExamples());

                return ok(dynamicTable.render(returnedData, learned.getGeneratedHaskell()));
            } else {
                //Return a 202 Accepted Header as learning is in progress
                return Results.status(202);
            }
        });
    }
}
