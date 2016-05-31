package controllers;

import models.rules.*;
import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

public class HaskellGenerator {

    private List<ChoiceRule> skeletonRules;
    private List<ChoiceRule> matchRules;
    private List<ChoiceRule> chosenRules = new ArrayList<>();
    private List<ChoiceRule> chosenMatches = new ArrayList<>();

    //Temp until match learning is implemented
    private static Map<String, String> matchMap = new HashMap<>();
    private String[] learnedConditions;

    public HaskellGenerator(List<ChoiceRule> skeletonRules, List<ChoiceRule> matchRules) {
        this.skeletonRules = skeletonRules;
        this.matchRules = matchRules;
    }

    public List<String> generateHaskell(List<String> chosenPredicates) throws IOException {
        //Step 1: Get relevant rules from set of skeleton rules.

        learnedConditions = new String[chosenPredicates.size() - 1];

        chosenPredicates.stream().filter(pred -> pred.contains("match")).forEach(pred -> {
            String split = pred.split("\\(")[1].split("\\)")[0].split(",")[1];
            int ruleNum = Integer.valueOf(split);

            ChoiceRule rule = matchRules.get(ruleNum - 1);
            Match matchRule = (Match) rule;

            int numConsts = matchRule.numConstants();
            String learnedCondition = matchRule.getCondition();

            for (int i = 1; i <= numConsts; i++) {
                String constVal = pred.split("\\(")[1].split("\\)")[0].split(",")[i + 1];
                learnedCondition = learnedCondition.replace("C" + i, constVal);

            }

            matchRule.updateCondition(learnedCondition);
            chosenMatches.add(matchRule);

	        int rulePosition = Integer.valueOf(pred.split("\\(")[1].split("\\)")[0].split(",")[0]);
            learnedConditions[rulePosition - 1] = learnedCondition;
        });

        chosenPredicates.stream().filter(pred -> !pred.contains("match")).forEach(pred -> {
            if (pred.contains("where")) {
                //Extract the rule number from the predicate. Should probably use a regex but #yolo
                String split = pred.split("\\(")[1].split("\\)")[0].split(",")[0];
                int ruleNum = Integer.valueOf(split);

                ChoiceRule rule = skeletonRules.get(ruleNum - 1);

                String ruleBody = rule.body();
                int numConsts = rule.numConstants();

                //Replace constants with learned values
                for (int i = 1; i <= numConsts; i++) {
                    String constVal = pred.split("\\(")[1].split("\\)")[0].split(",")[i];
                    ruleBody = ruleBody.replace("C" + i, constVal);
                }

                rule.updateBody(ruleBody);
                chosenRules.add(rule);
            } else {
                String split = pred.split("\\(")[1].split("\\)")[0].split(",")[1];
                int ruleNum = Integer.valueOf(split);

                ChoiceRule rule = skeletonRules.get(ruleNum - 1);

                String ruleBody = rule.body();
                List<String> args = new ArrayList<>(rule.args());
                int numConsts = rule.numConstants();

                StringBuilder bodyOut = new StringBuilder(ruleBody);
                int constCount = 1;

                //Replace all const locations with correct numbers
                for (int index = ruleBody.indexOf("C"); index >= 0; index = ruleBody.indexOf("C", index + 1)) {
                    bodyOut.replace(index + 1, index + 2, Integer.toString(constCount));
                    constCount++;
                }

                ruleBody = bodyOut.toString();

                //Replace constants with learned values
                for (int i = 1; i <= numConsts; i++) {
                    String constVal = pred.split("\\(")[1].split("\\)")[0].split(",")[i + 1];
                    ruleBody = ruleBody.replace("C" + i, constVal);

                    for (int j = 0; j < args.size(); j++) {
                        if (args.get(j).equals("C" + i)) {
                            args.remove(j);
                            args.add(j, constVal);
                        }
                    }
                }

                //Replace rule number R with learned value
                String rulePosition = pred.split("\\(")[1].split("\\)")[0].split(",")[0];
                ((Rule) rule).setRulePosition(Integer.valueOf(rulePosition));

                //Replace variables with learned match values
                if (Integer.valueOf(rulePosition) == 1) {
                    for (Map.Entry<String, String> entry : matchMap.entrySet()) {
                        ruleBody = ruleBody.replace(entry.getKey(), entry.getValue());
                        for (int i = 0; i < args.size(); i++) {
                            if (args.get(i).equals(entry.getKey())) {
                                args.remove(i);
                                args.add(i, entry.getValue());
                            }
                        }
                    }
                }

                rule.updateBody(ruleBody);
                rule.updateArgs(args);
                chosenRules.add(rule);
            }
        });

        String[] haskell;
        int numRules = (int) chosenRules.stream().filter(r -> r instanceof Rule).count();

        //Step 2: Turn rules into haskell.

        ChoiceRule baseRule = chosenRules.get(0);

        haskell = new String[chosenRules.size() + 1];
        String inputs = baseRule.args().toString();
        String functionName = ((EqRule) baseRule).functionName();
        inputs = inputs.replace("[", "");
        inputs = inputs.replace("]", "");
        inputs = inputs.replace(",", "");
        inputs = inputs.toLowerCase();

        haskell[0] = String.format("%s %s\n", functionName, inputs);

        for(ChoiceRule rule : chosenRules) {
            String body = rule.body();
            String codeline = "";

            if(rule instanceof EqRule) {
                int numEqRules = chosenRules.size();
                int rulePosition = ((EqRule) rule).rulePosition();

                if(rulePosition == numEqRules) {
                    codeline = String.format("\t| otherwise = %s", ruleToHaskell(body));
                } else {
                    String condition = learnedConditions[rulePosition - 1];
                    codeline = String.format("\t| %s = %s\n", ruleToHaskell(condition), ruleToHaskell(body));
                }

                haskell[rulePosition] = codeline;
            } else if(rule instanceof Rule) {
                if (body.contains("add")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase().trim();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase().trim();

                    codeline = String.format("%s %s = %s + %s\n",
                            functionName,
                            inputs,
                            arg1,
                            arg2
                    );
                } else if(body.contains("mul")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase().trim();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase().trim();
                    codeline = String.format("%s %s = %s * %s\n",
                            functionName,
                            inputs,
                            arg1,
                            arg2
                    );
                } else if(body.contains("sub")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase().trim();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase().trim();
                    codeline = String.format("%s %s = %s * %s\n",
                            functionName,
                            inputs,
                            arg1,
                            arg2
                    );
                } else if(body.contains("call")) {
                    String calledFunction = body.split("\\(")[1].split(",")[0];
                    String funcArgs = Arrays.toString(Arrays.copyOfRange(body.split(","), 1, 1 + rule.args().size()));
                    funcArgs = funcArgs.replace("[", "");
                    funcArgs = funcArgs.replace("]", "");
                    funcArgs = funcArgs.replace(",", "");
                    funcArgs = funcArgs.replace(")", "");
                    funcArgs = funcArgs.replace("(", "");
                    funcArgs = funcArgs.replaceAll("\\s+", " ");
                    funcArgs = funcArgs.toLowerCase();

                    codeline = String.format("%s %s = %s %s\n",
                            functionName,
                            inputs,
                            calledFunction,
                            funcArgs);
                } else {
                    codeline = String.format("%s %s = %s\n",
                            functionName,
                            inputs,
                            body.toLowerCase());
                }

                int rulePosition = ((Rule) rule).rulePosition();
                haskell[rulePosition-1] = codeline;
            } else if(rule instanceof Where){
                String var = ((Where) rule).var();

                if (body.contains("add")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase().trim();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase().trim();

                    codeline = String.format("where %s = %s + %s\n",
                            var,
                            arg1,
                            arg2
                    );
                } else if(body.contains("mul")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase().trim();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase().trim();
                    codeline = String.format("where %s = %s * %s\n",
                            var,
                            arg1,
                            arg2
                    );
                } else if(body.contains("sub")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase().trim();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase().trim();
                    codeline = String.format("where %s = %s - %s\n",
                            var,
                            arg1,
                            arg2
                    );
                } else if(body.contains("call")) {
                    String calledFunction = body.split("\\(")[1].split(",")[0];
                    String funcArgs = Arrays.toString(Arrays.copyOfRange(body.split(","), 1, 1 + rule.args().size()));
                    funcArgs = funcArgs.replace("[", "");
                    funcArgs = funcArgs.replace("]", "");
                    funcArgs = funcArgs.replace(",", "");
                    funcArgs = funcArgs.replace(")", "");
                    funcArgs = funcArgs.replace("(", "");
                    funcArgs = funcArgs.replaceAll("\\s+", " ");
                    funcArgs = funcArgs.toLowerCase();

                    codeline = String.format("where %s = %s %s\n",
                            var,
                            calledFunction,
                            funcArgs);
                } else {
                    codeline = String.format("where %s = %s\n",
                            var,
                            body.toLowerCase());
                }

                int wherePosition = Integer.valueOf(((Where) rule).var().substring(1));

                codeline = StringUtils.repeat("\t", wherePosition+1) + codeline;

                haskell[wherePosition + numRules] = codeline;
            }
        }

        return Arrays.asList(haskell);
    }

    public List<ChoiceRule> getChosenRules() {
        List<ChoiceRule> rulesAndMatches = new ArrayList<>();
        rulesAndMatches.addAll(chosenRules);
        rulesAndMatches.addAll(matchRules);
        return rulesAndMatches;
    }

    public static String ruleToHaskell(String body) {
        List<String> args = extractNestedArgs(body);
        if(body.startsWith("add")) {
            String arg1 = ruleToHaskell(args.get(0));
            String arg2 = ruleToHaskell(args.get(1));

            return String.format("(%s + %s)", arg1, arg2);

        } else if(body.startsWith("mul")) {
            String arg1 = ruleToHaskell(args.get(0));
            String arg2 = ruleToHaskell(args.get(1));

            return String.format("(%s * %s)", arg1, arg2);

        } else if(body.startsWith("sub")) {
            String arg1 = ruleToHaskell(args.get(0));
            String arg2 = ruleToHaskell(args.get(1));

            return String.format("(%s - %s)", arg1, arg2);

        } else if(body.startsWith("call")) {
            String funcArgs = args.subList(1, args.size()).stream().map(HaskellGenerator::ruleToHaskell).collect(Collectors.toList()).toString();
            funcArgs = funcArgs.replace("[", "");
            funcArgs = funcArgs.replace("]", "");
            funcArgs = funcArgs.replace(",", "");
            String calledFunction = args.get(0);

            return String.format("(%s %s)", calledFunction, funcArgs);

        } else {
            return body.toLowerCase();
        }
    }

    public static List<String> extractNestedArgs(String body) {
        int bracketCount = 0;
        List<String> args = new ArrayList<>();
        int argStart = 0;
        int argEnd;

        for(int i = 0; i < body.length(); i++) {
            char currChar = body.charAt(i);
            if(currChar == '(') {
                if(bracketCount == 0) {
                    //First opening bracket
                    argStart = i + 1;
                }
                bracketCount++;
            }

            if(currChar == ')'){
                bracketCount--;
                if(bracketCount == 0) {
                    //Last closing bracket
                    argEnd = i;
                    args.add(body.substring(argStart, argEnd).trim());
                }
            }

            if(bracketCount == 1 && currChar == ',') {
                argEnd = i;
                args.add(body.substring(argStart, argEnd).trim());
                argStart = argEnd + 1;
            }
        }

        return args;
    }
}
