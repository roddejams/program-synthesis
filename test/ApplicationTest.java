import controllers.HaskellGenerator;
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
    public void testSkeletonRules() throws IOException, InterruptedException {
        //ConstraintLearningProcessor proc = new ConstraintLearningProcessor();

        //List<ChoiceRule> rules = proc.generateSkeletonRules(3, 2);
        //Path file = InterpretedLearningProcessor.writeSkeletonRules(rules, 3, 1);
        //System.out.println(rules);
    }

    @Test
    public void testArgExtraction() {
        List<String> args = HaskellGenerator.extractNestedArgs("mul(call(f, (N0 - C1)), N0)");
        System.out.println(args);
    }

    @Test
    public void testHaskellConversion() {
        String out = HaskellGenerator.ruleToHaskell("call(f, ((N0 - C1), (N0 * N1)))");
        System.out.println(out);
    }
    /*@Test
    public void renderTemplate() {
        Content html = views.html.index.render("Your new application is ready.");
        assertEquals("text/html", html.contentType());
        assertTrue(html.body().contains("Your new application is ready."));
    }*/


}
