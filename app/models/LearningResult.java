package models;

import models.rules.ChoiceRule;

import java.util.List;

public class LearningResult {

    protected IOExamples completedExamples;
    protected List<String> generatedHaskell;
    protected List<ChoiceRule> generatedASP;

    public LearningResult(IOExamples completedExamples, List<String> generatedHaskell, List<ChoiceRule> generatedASP) {
        this.generatedHaskell = generatedHaskell;
        this.completedExamples = completedExamples;
        this.generatedASP = generatedASP;
    }

    public List<ChoiceRule> getGeneratedASP() {
        return generatedASP;
    }

    public IOExamples getCompletedExamples() {
        return completedExamples;
    }

    public List<String> getGeneratedHaskell() {
        return generatedHaskell;
    }
}
