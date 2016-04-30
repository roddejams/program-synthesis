package models;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

public class IOExample {

    private List<String> inputs;
    private String output;

    public void setInputs(List<String> inputs) {
        this.inputs = new ArrayList<>(inputs);
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

    @Override
    public String toString() {
        if(inputs != null) {
            String inputString = StringUtils.repeat("(%s, ", inputs.size() - 1) + "%s" + StringUtils.repeat(")", inputs.size() - 1);
            String filledInputString = String.format(inputString, inputs.toArray());
            return String.format("example(call(f, %s), %s).\n", filledInputString, this.output);
        } else {
            return "";
        }
    }
}
