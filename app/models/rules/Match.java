package models.rules;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Match extends ChoiceRule{

    private String condition;
    private int rulePosition;

    public Match(int ruleNumber, List<String> args, String body, String functionName, String condition) {
        super(ruleNumber, args, body, functionName);
        numConstants = StringUtils.countMatches(condition, "C");
        this.condition = condition;
    }

    public String getCondition() {
        return condition;
    }

    public int rulePosition() {
        return rulePosition;
    }

    public void setRulePosition(int position) {
        rulePosition = position;
    }

    public void updateCondition(String condition) {
        this.condition = condition;
    }

    public static class MatchBuilder extends ChoiceRuleBuilder {
        private String condition;

        @Override
        public MatchBuilder withRuleNumber(int ruleNumber) {
            this.ruleNumber = ruleNumber;
            return this;
        }

        @Override
        public MatchBuilder withArgs(List<String> args) {
            this.args = new ArrayList<>(args);
            return this;
        }

        @Override
        public MatchBuilder withBody(String body) {
            return this;
        }

        @Override
        public MatchBuilder withName(String name) {
            this.functionName = name;
            return this;
        }

        public MatchBuilder withCondition(String condition) {
            this.condition = condition;
            return this;
        }

        @Override
        public Match build() {
            return new Match(ruleNumber, args, null, functionName, condition);
        }
    }

    @Override
    public String toString() {
        String argString = args.toString();
        argString = argString.replace('[', '(');
        argString = argString.replace("]", ")");

        String constChoice = "";
        for(int i = 1; i <= numConstants; i++){
            constChoice += String.format(", C%d", i);
        }

        if(condition.isEmpty()) {
            return String.format("match_guard(%s, R, %s) :- is_call(call(%s, %s)), choose_match(R, %d%s).\n",
                    functionName,
                    argString,
                    functionName,
                    argString,
                    ruleNumber,
                    constChoice);
        } else {

            return String.format("match_guard(%s, R, %s) :- %s, is_call(call(%s, %s)), choose_match(R, %d%s).\n",
                    functionName,
                    argString,
                    condition,
                    functionName,
                    argString,
                    ruleNumber,
                    constChoice);
        }
    }

    @Override
    public String toLearnableString() {
        String argString = args.toString();
        argString = argString.replace('[', '(');
        argString = argString.replace("]", ")");

        if (condition.isEmpty()) {
            return String.format("match_guard(%s, %s, %s) :- is_call(call(%s, %s)).\n",
                    functionName,
                    ruleNumber,
                    argString,
                    functionName,
                    argString);
        } else {

            return String.format("match_guard(%s, %s, %s) :- %s, is_call(call(%s, %s)).\n",
                    functionName,
                    ruleNumber,
                    argString,
                    condition,
                    functionName,
                    argString);
        }
    }

    private String mapToString(Map<String, String> map) {
        String out = "";

        for(Map.Entry<String, String> entry : map.entrySet()) {
            out += String.format("%s == %s", entry.getKey(), entry.getValue());
        }

        return out;
    }
}
