import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Rule {

    private final int numConstants;
    private final int depth;
    private int ruleNumber;
    private String functionName;
    private List<String> args;
    private String body;

    public Rule(int ruleNumber, String functionName, List<String> args, String body, int depth) {
        this.ruleNumber = ruleNumber;
        this.functionName = functionName;
        this.args = args;
        this.body = body;
        this.depth = depth;
        this.numConstants = StringUtils.countMatches(body, "C");
    }

    public String body() {
        return body;
    }

    public int numConstants() {
        return numConstants;
    }

    public int depth() {
        return depth;
    }

    public static class RuleBuilder {

        private int ruleNumber;
        private String functionName;
        private List<String> args = new ArrayList<String>();
        private String body;
        private int depth;

        public RuleBuilder withRuleNumber(int ruleNumber) {
            this.ruleNumber = ruleNumber;
            return this;
        }

        public RuleBuilder withName(String functionName) {
            this.functionName = functionName;
            return this;
        }

        public RuleBuilder withArgs(String... args) {
            this.args = Arrays.asList(args);
            return this;
        }

        public RuleBuilder withBody(String body) {
            this.body = body;
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

        return String.format("rule(R, %s, %s, %s) :- input(call(%s, %s)), choose(R, %d%s).\n",
                functionName,
                args.get(0),
                body,
                functionName,
                args.get(0),
                ruleNumber,
                constChoice
        );
    }
}
