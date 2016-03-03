import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

public abstract class ChoiceRule {

    protected final int numConstants;
    protected int ruleNumber;
    protected List<String> args;
    protected String body;

    public ChoiceRule(int ruleNumber, List<String> args, String body) {
        this.numConstants =  StringUtils.countMatches(body, "C");
        this.ruleNumber = ruleNumber;
        this.args = args;
        this.body = body;
    }

    public int numConstants() {
        return numConstants;
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
