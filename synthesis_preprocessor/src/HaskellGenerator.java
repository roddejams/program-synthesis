import org.apache.commons.lang3.StringUtils;
import rules.ChoiceRule;
import rules.Rule;
import rules.Where;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class HaskellGenerator {

    private List<ChoiceRule> skeletonRules;

    public HaskellGenerator(List<ChoiceRule> skeletonRules) {
        this.skeletonRules = skeletonRules;
    }

    public String generateHaskell(List<String> chosenPredicates) throws IOException {
        //Step 1: Get relevant rules from set of skeleton rules.

        List<ChoiceRule> chosenRules = new ArrayList<>();
        for(String pred : chosenPredicates) {
            if(pred.contains("where")) {
                //Extract the rule number from the predicate. Should probably use a regex but #yolo
                String split = pred.split("\\(")[1].split("\\)")[0].split(",")[0];
                int ruleNum = Integer.valueOf(split);

                ChoiceRule rule = skeletonRules.get(ruleNum - 1);

                String ruleBody = rule.body();
                int numConsts = rule.numConstants();

                //Replace constants with learned values
                for(int i = 1; i <= numConsts; i++){
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
                int numConsts = rule.numConstants();

                //Replace constants with learned values
                for(int i = 1; i <= numConsts; i++){
                    String constVal = pred.split("\\(")[1].split("\\)")[0].split(",")[i+1];
                    ruleBody = ruleBody.replace("C" + i, constVal);
                }

                //Replace rule number R with learned value
                String rulePosition = pred.split("\\(")[1].split("\\)")[0].split(",")[0];
                ((Rule) rule).setRulePosition(Integer.valueOf(rulePosition));

                rule.updateBody(ruleBody);
                chosenRules.add(rule);
            }
        }

        String[] haskell = new String[chosenRules.size()];
        int numRules = (int) chosenRules.stream().filter(r -> r instanceof Rule).count();


        //Step 2: Turn rules into haskell.

        for(ChoiceRule rule : chosenRules) {
            String body = rule.body();
            String codeline = "";

            String inputs = rule.args().toString();
            inputs = inputs.replace("[", "");
            inputs = inputs.replace("]", "");
            inputs = inputs.replace(",", "");
            inputs = inputs.toLowerCase();

            if(rule instanceof Rule) {
                String functionName = ((Rule) rule).functionName();

                if (body.contains("add")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase();

                    codeline = String.format("%s %s = %s + %s\n",
                            functionName,
                            inputs,
                            arg1,
                            arg2
                    );
                } else if(body.contains("mul")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase();
                    codeline = String.format("%s %s = %s * %s\n",
                            functionName,
                            inputs,
                            arg1,
                            arg2
                    );
                } else if(body.contains("sub")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase();
                    codeline = String.format("%s %s = %s * %s\n",
                            functionName,
                            inputs,
                            arg1,
                            arg2
                    );
                } else if(body.contains("call")) {
                    String calledFunction = body.split("\\(")[1].split(",")[0];
                    String funcArgs = Arrays.toString(Arrays.copyOfRange(body.split("\\("), 2, chosenRules.size()));
                    funcArgs = funcArgs.replace("[", "");
                    funcArgs = funcArgs.replace("]", "");
                    funcArgs = funcArgs.replace(",", "");
                    funcArgs = funcArgs.replace(")", "");
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
            } else {
                String var = ((Where) rule).var();

                if (body.contains("add")) {
                    String arg1 = body.split("\\(")[1].split(",")[0];
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0];

                    codeline = String.format("where %s = %s + %s\n",
                            var,
                            arg1,
                            arg2
                    );
                } else if(body.contains("mul")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase();
                    codeline = String.format("where %s = %s * %s\n",
                            var,
                            arg1,
                            arg2
                    );
                } else if(body.contains("sub")) {
                    String arg1 = body.split("\\(")[1].split(",")[0].toLowerCase();
                    String arg2 = body.split("\\(")[1].split(",")[1].split("\\)")[0].toLowerCase();
                    codeline = String.format("where %s = %s - %s\n",
                            var,
                            arg1,
                            arg2
                    );
                } else if(body.contains("call")) {
                    String calledFunction = body.split("\\(")[1].split(",")[0];
                    String funcArgs = Arrays.toString(Arrays.copyOfRange(body.split("\\("), 2, chosenRules.size()));
                    funcArgs = funcArgs.replace("[", "");
                    funcArgs = funcArgs.replace("]", "");
                    funcArgs = funcArgs.replace(",", "");
                    funcArgs = funcArgs.replace(")", "");
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

        return Arrays.asList(haskell).toString();

    }
}
