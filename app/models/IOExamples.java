package models;

import java.util.ArrayList;
import java.util.List;

/*
Just a wrapper around a list of IOExamples - so play can do form processing on it.
 */

public class IOExamples {

    protected List<IOExample> examples;
    protected String name;

    protected boolean useAddition = false;
    protected boolean useSubtraction = false;
    protected boolean useMultiplication = false;
    protected boolean useDivision = false;

    protected boolean useTailRecursion = false;

    public IOExamples() {

    }

    public IOExamples(IOExamples oldExamples) {
        this.examples = oldExamples.getExamples();
        this.name = oldExamples.getName();
        this.useAddition = oldExamples.isUseAddition();
        this.useSubtraction = oldExamples.isUseSubtraction();
        this.useMultiplication = oldExamples.isUseMultiplication();
        this.useTailRecursion = oldExamples.isUseTailRecursion();
    }

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

    public List<String> getChosenArithmeticOps() {
        List<String> ops = new ArrayList<>();
        if(useAddition) ops.add("(%s + %s)");
        if(useSubtraction) ops.add("(%s - %s)");
        if(useMultiplication) ops.add("(%s * %s)");
        if(useDivision) ops.add("(%s / %s)");
        return ops;
    }

    public List<String> getChosenArgOps() {
        List<String> ops = new ArrayList<>();
        if(useAddition) ops.add("add(%s, %s)");
        if(useSubtraction) ops.add("sub(%s, %s)");
        if(useMultiplication) ops.add("mul(%s, %s)");
        if(useDivision) ops.add("div(%s, %s)");
        return ops;
    }

    public boolean isUseDivision() {
        return useDivision;
    }

    public void setUseDivision(boolean useDivision) {
        this.useDivision = useDivision;
    }

    public boolean isUseAddition() {
        return useAddition;
    }

    public void setUseAddition(boolean useAddition) {
        this.useAddition = useAddition;
    }

    public boolean isUseSubtraction() {
        return useSubtraction;
    }

    public void setUseSubtraction(boolean useSubtraction) {
        this.useSubtraction = useSubtraction;
    }

    public boolean isUseMultiplication() {
        return useMultiplication;
    }

    public void setUseMultiplication(boolean useMultiplication) {
        this.useMultiplication = useMultiplication;
    }

    public boolean isUseTailRecursion() {
        return useTailRecursion;
    }

    public void setUseTailRecursion(boolean useTailRecursion) {
        this.useTailRecursion = useTailRecursion;
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
