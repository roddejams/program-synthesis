import rules.ChoiceRule;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class HaskellGenerator {

    private List<ChoiceRule> skeletonRules;

    public HaskellGenerator(List<ChoiceRule> skeletonRules) {
        this.skeletonRules = skeletonRules;
    }

    public String generateHaskell(List<String> chosenPredicates) throws IOException {
        //Step 1: Get relevant rules from set of skeleton rules.

        List<String> chosenRules = new ArrayList<>();

        //TODO: Need to do variable replacement
        for(String pred : chosenPredicates) {
            if(pred.contains("where")) {
                //Extract the rule number from the predicate. Should probably use a regex but #yolo
                String split = pred.split("\\(")[1].split("\\)")[0].split(",")[0];
                int ruleNum = Integer.valueOf(split);

                String rule = skeletonRules.get(ruleNum - 1).toString();
                int numConsts = skeletonRules.get(ruleNum-1).numConstants();

                //Replace constants with learned values
                for(int i = 1; i <= numConsts; i++){
                    String constVal = pred.split("\\(")[1].split("\\)")[0].split(",")[i];
                    rule = rule.replace("C" + i, constVal);
                }

                chosenRules.add(rule);
            } else {
                String split = pred.split("\\(")[1].split("\\)")[0].split(",")[1];
                int ruleNum = Integer.valueOf(split);

                String rule = skeletonRules.get(ruleNum - 1).toString();
                int numConsts = skeletonRules.get(ruleNum-1).numConstants();

                //Replace constants with learned values
                for(int i = 1; i <= numConsts; i++){
                    String constVal = pred.split("\\(")[1].split("\\)")[0].split(",")[i+1];
                    rule = rule.replace("C" + i, constVal);
                }

                //Replace rule number R with learned value
                String ruleNumber = pred.split("\\(")[1].split("\\)")[0].split(",")[0];
                rule = rule.replace("R", ruleNumber);

                chosenRules.add(rule);
            }
        }

        return chosenRules.toString();

        //Step 2: Do some antlr magic (I guess) to turn rule bodies into haskell
    }
}
