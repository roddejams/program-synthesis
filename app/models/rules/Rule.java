package models.rules;

import java.util.ArrayList;
import java.util.List;

public class Rule extends ChoiceRule {

    protected final int depth;
    protected int rulePosition = 0;

    public Rule(int ruleNumber, String functionName, List<String> args, String body, int depth) {
        super(ruleNumber, args, body, functionName);
        this.depth = depth;
    }

    public int depth() {
        return depth;
    }

    public String functionName() {
        return functionName;
    }

    public int rulePosition() {
        return rulePosition;
    }

    public void setRulePosition(int position) {
        rulePosition = position;
    }

    public static class RuleBuilder extends ChoiceRuleBuilder{

        protected String functionName;
        protected int depth;

        public RuleBuilder withRuleNumber(int ruleNumber) {
            this.ruleNumber = ruleNumber;
            return this;
        }

        public RuleBuilder withArgs(List<String> args) {
            this.args = new ArrayList<>(args);
            return this;
        }

        public RuleBuilder withBody(String body) {
            this.body = body;
            return this;
        }

        public RuleBuilder withName(String functionName) {
            this.functionName = functionName;
            return this;
        }

        public RuleBuilder withDepth(int depth) {
            this.depth = depth;
            return this;
        }

        public Rule build() {
            return new Rule(ruleNumber, functionName, args, body, depth);
        }
    }

    @Override
    public String toString() {
        String constChoice = "";
        for(int i = 1; i <= numConstants; i++){
            constChoice += String.format(", C%d", i);
        }

        String argString = args.toString();
        argString = argString.replace('[', '(');
        argString = argString.replace("]", ")");

        String position = rulePosition == 0 ? "R" : String.valueOf(rulePosition);

        return String.format("rule(%s, %s, %s, %s) :- input(call(%s, %s)), choose(R, %d%s).\n",
                position,
                functionName,
                argString,
                body,
                functionName,
                argString,
                ruleNumber,
                constChoice
        );
    }
}
