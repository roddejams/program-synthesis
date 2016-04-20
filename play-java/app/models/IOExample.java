package models;

import java.util.Arrays;
import java.util.List;

public class IOExample {

    private List<String> inputs = Arrays.asList("");
    private String output = "";

    public void setInputs(List<String> inputs) {
        this.inputs = inputs;
    }

    public void setOutput(String output) {
        this.output = output;
    }

    public List<String> getInputs() {
        return inputs;
    }

    public String getOutput() {
        return output;
    }

    //TODO: Override toString()
}
