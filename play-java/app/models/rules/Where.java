package models.rules;

import java.util.List;

public class Where extends ChoiceRule {

    private String var;

    public Where(int ruleNumber, List<String> args, String body, String var, String functionName) {
        super(ruleNumber, args, body, functionName);
        this.var = var;
    }

    public String var() {
        return var;
    }

    public static class WhereBuilder extends ChoiceRuleBuilder {

        private String var;

        public WhereBuilder withRuleNumber(int ruleNumber) {
            this.ruleNumber = ruleNumber;
            return this;
        }

        public WhereBuilder withArgs(List<String> args) {
            this.args = args;
            return this;
        }

        public WhereBuilder withName(String functionName) {
            this.functionName = functionName;
            return this;
        }

        public WhereBuilder withBody(String body) {
            this.body = body;
            return this;
        }
        public WhereBuilder withVar(String var) {
            this.var = var;
            return this;
        }

        @Override
        public Where build() {
            return new Where(ruleNumber, args, body, var, functionName);
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

        return String.format("where(%s, %s, %s) :- input(call(%s, %s)), choose_where(%d%s).\n",
                var,
                argString,
                body,
                functionName,
                argString,
                ruleNumber,
                constChoice
        );
    }
}
