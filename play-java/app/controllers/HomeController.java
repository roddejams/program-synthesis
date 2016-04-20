package controllers;

import models.IOExample;
import models.IOExamples;
import play.data.Form;
import play.data.FormFactory;
import play.mvc.Controller;
import play.mvc.Result;
import views.html.main;

import javax.inject.Inject;
import java.util.Arrays;

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
        IOExample example1 = new IOExample();
        IOExample example2 = new IOExample();
        example1.setInputs(Arrays.asList("1", "8"));
        example1.setOutput("7");
        example2.setInputs(Arrays.asList("2", "4"));
        example2.setOutput("3");
        examples.setExamples(Arrays.asList(example1, example2));
        Form<IOExamples> formData = formFactory.form(IOExamples.class).fill(examples);

        return ok(main.render(
                "A Haskell Code Generator from I/O Examples",
                formData
        ));
    }

    public Result runLearningTask() {
        Form<IOExamples> formData = formFactory.form(IOExamples.class).bindFromRequest();
        IOExamples examples = formData.get();

        return ok(main.render(
                "A Haskell Code Generator from I/O Examples",
                formData));
    }
}
