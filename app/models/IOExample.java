package models;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

import java.util.ArrayList;
import java.util.List;

public class IOExample {

    private String name = "f";
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

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        if(inputs != null) {
            String inputString = StringUtils.repeat("(%s, ", inputs.size() - 1) + "%s" + StringUtils.repeat(")", inputs.size() - 1);
            String filledInputString = String.format(inputString, inputs.toArray());
            return String.format("example(call(%s, %s), %s).\n", name, filledInputString, this.output);
        } else {
            return "";
        }
    }

    @Override
    public boolean equals(Object obj) {
        if(!(obj instanceof IOExample)) {
            return false;
        } else if(obj == this) {
            return true;
        }

        IOExample rhs = (IOExample) obj;

        return new EqualsBuilder()
                .append(inputs, rhs.inputs)
                .append(output, rhs.output)
                .isEquals();
    }

    @Override
    public int hashCode() {
        return new HashCodeBuilder(3, 23).append(inputs).append(output).toHashCode();
    }
}
