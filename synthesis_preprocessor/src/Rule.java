import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Rule extends ChoiceRule {

    private final int depth;
    private String functionName;

    public Rule(int ruleNumber, String functionName, List<String> args, String body, int depth) {
        super(ruleNumber, args, body);
        this.functionName = functionName;
        this.depth = depth;
    }

    public static class RuleBuilder extends ChoiceRuleBuilder{

        private String functionName;
        private int depth;

        public RuleBuilder withRuleNumber(int ruleNumber) {
            this.ruleNumber = ruleNumber;
            return this;
        }

        public RuleBuilder withArgs(List<String> args) {
            this.args = args;
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

        return String.format("rule(R, %s, %s, %s) :- input(call(%s, %s)), choose(R, %d%s).\n",
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
