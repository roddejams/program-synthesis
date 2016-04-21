package models;

import java.util.List;

public class LearningResult {

    protected IOExamples completedExamples;
    protected List<String> generatedHaskell;

    public LearningResult(IOExamples completedExamples, List<String> generatedHaskell) {
        this.generatedHaskell = generatedHaskell;
        this.completedExamples = completedExamples;
    }

    public IOExamples getCompletedExamples() {
        return completedExamples;
    }

    public List<String> getGeneratedHaskell() {
        return generatedHaskell;
    }
}
