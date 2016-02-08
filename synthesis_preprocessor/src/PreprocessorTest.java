import org.hamcrest.CoreMatchers;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.List;

import static org.hamcrest.CoreMatchers.*;
import static org.hamcrest.MatcherAssert.assertThat;

public class PreprocessorTest {

    private Preprocessor preproc;

    @Before
    public void setUp() {
        preproc = new Preprocessor(Arrays.asList("func"));
    }

    @Test
    public void zeroDepth() {

    }


}