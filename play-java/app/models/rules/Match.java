package models.rules;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Match extends ChoiceRule{

    private Map<String, Integer> matchMap;
    private int rulePosition;

    public Match(int ruleNumber, List<String> args, String body, String functionName, Map<String, Integer> matchMap) {
        super(ruleNumber, args, body, functionName);
        this.matchMap = matchMap;
    }

    public Map<String, Integer> getMatchMap() {
        return matchMap;
    }

    public int rulePosition() {
        return rulePosition;
    }

    public void setRulePosition(int position) {
        rulePosition = position;
    }

    public static class MatchBuilder extends ChoiceRuleBuilder {
        private Map<String, Integer> matchMap;

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

        public MatchBuilder withMapping(Map<String, Integer> matchMap) {
            this.matchMap = new HashMap<>(matchMap);
            return this;
        }

        @Override
        public Match build() {
            return new Match(ruleNumber, args, null, functionName, matchMap);
        }

        public Match buildDefault() {
            return new Match(ruleNumber, args, null, functionName, new HashMap<>());
        }
    }

    @Override
    public String toString() {
        String argString = args.toString();
        argString = argString.replace('[', '(');
        argString = argString.replace("]", ")");

        if(matchMap.isEmpty()) {
            return String.format("match2(%s, %s, %s) :- input(call(%s, %s)).\n",
                    functionName,
                    ruleNumber,
                    argString,
                    functionName,
                    argString);
        } else {
            String mapString = mapToString(matchMap);

            return String.format("match2(%s, %s, %s) :- %s input(call(%s, %s)).\n",
                    functionName,
                    ruleNumber,
                    argString,
                    mapString,
                    functionName,
                    argString);
        }
    }

    private String mapToString(Map<String, Integer> map) {
        String out = "";

        for(Map.Entry<String, Integer> entry : map.entrySet()) {
            out += String.format("%s == %s", entry.getKey(), entry.getValue());
        }

        return out;
    }
}
