package models;

import java.util.List;

/*
Just a wrapper around a list of IOExamples - so play can do form processing on it.
 */

public class IOExamples {

    protected List<IOExample> examples;

    public void setExamples(List<IOExample> examples) {
        this.examples = examples;
    }

    public List<IOExample> getExamples() {
        return examples;
    }
    //TODO: Override toString();
}
