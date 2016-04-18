package controllers;

import play.data.Form;
import play.data.FormFactory;
import play.mvc.*;

import views.html.*;

import javax.inject.Inject;

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
        Form<IOExample> formData = formFactory.form(IOExample.class).fill(new IOExample());

        return ok(main.render(
                "A Haskell Code Generator from I/O Examples",
                formData
        ));
    }

    public Result runLearningTask() {
        Form<IOExample> formData = formFactory.form(IOExample.class).bindFromRequest();
        IOExample example = formData.get();

        return ok(main.render(
                "A Haskell Code Generator from I/O Examples",
                formData));
    }
}
