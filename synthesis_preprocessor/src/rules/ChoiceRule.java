package rules;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

public abstract class ChoiceRule {

    protected final int numConstants;
    protected int ruleNumber;
    protected List<String> args;
    protected String body;

    public ChoiceRule(int ruleNumber, List<String> args, String body) {
        this.numConstants =  StringUtils.countMatches(body, "C") + StringUtils.countMatches(args.toString(), "C");
        this.ruleNumber = ruleNumber;
        this.args = args;
        this.body = body;
    }

    public int numConstants() {
        return numConstants;
    }

    public int ruleNumber() {
        return ruleNumber;
    }

    public String body() {
        return body;
    }

    public List<String> args() {
        return args;
    }

    public void updateBody(String newBody) {
        body = newBody;
    }

    public void updateArgs(List<String> newArgs) {
        args = newArgs;
    }

    public static abstract class ChoiceRuleBuilder {

        protected int ruleNumber;
        protected List<String> args = new ArrayList<String>();
        protected String body;

        public abstract ChoiceRuleBuilder withRuleNumber(int ruleNumber);

        public abstract ChoiceRuleBuilder withArgs(List<String> args);

        public abstract ChoiceRuleBuilder withBody(String body);

        public abstract ChoiceRule build();

    }

    public static class RuleFactory {
        private List<ChoiceRule> skeletonRules = new ArrayList<>();
        private int numRules = 0;

        public void addRule(ChoiceRuleBuilder rule) {
            numRules++;
            skeletonRules.add(rule.withRuleNumber(numRules).build());
        }

        public List<ChoiceRule> getRules() {
            return skeletonRules;
        }
    }
}
