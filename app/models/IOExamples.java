package models;

import java.util.ArrayList;
import java.util.List;

/*
Just a wrapper around a list of IOExamples - so play can do form processing on it.
 */

public class IOExamples {

    protected List<IOExample> examples;
    protected String name;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setExamples(List<IOExample> examples) {
        this.examples = new ArrayList<>(examples);
    }

    public List<IOExample> getExamples() {
        return examples;
    }

    @Override
    public String toString() {
        String out = "";
        for(IOExample example : examples) {
            if(!name.isEmpty()) {
                example.setName(name);
            }
            out += example;
        }
        return out;
    }
}
