package controllers;

import models.IOExamples;
import models.LearningResult;
import play.data.Form;
import play.data.FormFactory;
import play.mvc.Controller;
import play.mvc.Result;
import views.html.main;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

/**
 * This controller contains an action to handle HTTP requests
 * to the application's home page.
 */
public class HomeController extends Controller {

    @Inject
    FormFactory formFactory;
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
                emptyHaskell
        ));
    }

    public Result runLearningTask() {
        Form<IOExamples> formData = formFactory.form(IOExamples.class).bindFromRequest();
        IOExamples examples = formData.get();

        try {
            LearningResult result = Preprocessor.runLearningTask(examples);

            Form<IOExamples> returnedData = formFactory.form(IOExamples.class).fill(result.getCompletedExamples());

            return ok(main.render(
                    "A Haskell Code Generator from I/O Examples",
                    returnedData,
                    result.getGeneratedHaskell()));

        } catch (Exception e) {
            System.out.println("Caught Exception");
            e.printStackTrace();
            return internalServerError();
        }
    }
}
