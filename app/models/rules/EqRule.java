package models.rules;

import java.util.ArrayList;
import java.util.List;

public class EqRule extends Rule {
    public EqRule(int ruleNumber, String functionName, List<String> args, String body, int depth) {
        super(ruleNumber, functionName, args, body, depth);
    }

    public static class EqRuleBuilder extends RuleBuilder{

        public EqRuleBuilder withRuleNumber(int ruleNumber) {
            this.ruleNumber = ruleNumber;
            return this;
        }

        public EqRuleBuilder withArgs(List<String> args) {
            this.args = new ArrayList<>(args);
            return this;
        }

        public EqRuleBuilder withBody(String body) {
            this.body = body;
            return this;
        }

        public EqRuleBuilder withName(String functionName) {
            this.functionName = functionName;
            return this;
        }

        public EqRuleBuilder withDepth(int depth) {
            this.depth = depth;
            return this;
        }

        public EqRule build() {
            return new EqRule(ruleNumber, functionName, args, body, depth);
        }
    }

    public static class EqRuleFactory {
        private List<ChoiceRule> simpleRules = new ArrayList<>();
        private List<ChoiceRule> callRules = new ArrayList<>();
        private int numRules = 0;

        public void addSimpleRule(ChoiceRuleBuilder rule) {
            numRules++;
            simpleRules.add(rule.withRuleNumber(numRules).build());
        }

        public void addCallRule(EqRuleBuilder rule) {
            numRules++;
            callRules.add(rule.withRuleNumber(numRules).build());
        }

        public List<ChoiceRule> getSimpleRules() {
          return new ArrayList<>(simpleRules);
        }

        public List<ChoiceRule> getCallRules() {
            return new ArrayList<>(callRules);
        }

        public List<ChoiceRule> getAllRules() {
            List<ChoiceRule> out = new ArrayList<>(simpleRules);
            out.addAll(callRules);
            return out;
        }
    }

    @Override
    public String toString() {
        String constChoice = "";
        for(int i = 1; i <= numConstants; i++){
            constChoice += String.format(", C%d", i);
        }

        StringBuilder bodyOut = new StringBuilder(body);
        int constCount = 1;

        //Replace all const locations with correct numbers
        for (int index = body.indexOf("C"); index >= 0; index = body.indexOf("C", index + 1))
        {
            bodyOut.replace(index+1, index+2, Integer.toString(constCount));
            constCount++;
        }

        String argString = args.toString();
        argString = argString.replace('[', '(');
        argString = argString.replace("]", ")");

        String position = rulePosition == 0 ? "R" : String.valueOf(rulePosition);

        return String.format("rule(%s, %s, %s, %s) :- is_call(call(%s, %s)), choose(R, %d%s).\n",
                position,
                functionName,
                argString,
                bodyOut,
                functionName,
                argString,
                ruleNumber,
                constChoice
        );
    }

    @Override
    public String toLearnableString() {
        StringBuilder bodyOut = new StringBuilder(body);
        int constCount = 1;

        //Replace all const locations with correct numbers
        for (int index = body.indexOf("C"); index >= 0; index = body.indexOf("C", index + 1))
        {
            bodyOut.replace(index+1, index+2, Integer.toString(constCount));
            constCount++;
        }

        String argString = args.toString();
        argString = argString.replace('[', '(');
        argString = argString.replace("]", ")");

        String position = rulePosition == 0 ? "R" : String.valueOf(rulePosition);

        return String.format("rule(%s, %s, %s, %s) :- is_call(call(%s, %s)).\n",
                position,
                functionName,
                argString,
                bodyOut,
                functionName,
                argString
        );
    }
}
