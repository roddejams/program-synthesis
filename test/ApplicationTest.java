import controllers.LearningProcessor;
import models.rules.ChoiceRule;
import org.junit.Test;

import java.io.IOException;
import java.util.List;


/**
 *
 * Simple (JUnit) tests that can call all parts of a play app.
 * If you are interested in mocking a whole application, see the wiki for more details.
 *
 */
public class ApplicationTest {

    @Test
    public void testSkeletonRules() throws IOException {
        List<ChoiceRule> rules = LearningProcessor.generateEqSkeletonRules(3, 2);
        //Path file = LearningProcessor.writeSkeletonRules(rules, 3, 1);
        System.out.println(rules);
    }

    /*@Test
    public void renderTemplate() {
        Content html = views.html.index.render("Your new application is ready.");
        assertEquals("text/html", html.contentType());
        assertTrue(html.body().contains("Your new application is ready."));
    }*/


}
