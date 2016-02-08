import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Preprocessor {

    private List<String> functionNames;
    private static final List<String> arg_ops = Arrays.asList(
            "add(N, %s)",
            "mul(N, %s)",
            "sub(N, %s)",
            "sub(%s, N)");

    private static final List<String> const_ops = Arrays.asList(
            "add(C%d, %s)",
            "mul(C%d, %s)",
            "sub(C%d, %s)");

    public Preprocessor(List<String> functionNames) {
        this.functionNames = functionNames;
    }

    public List<Rule> generateSkeletonRules(int maxDepth, int numFuncs) {
        List<Rule> skeletonRules;

        String fnName = functionNames.get(0);
        Rule.RuleBuilder builder = new Rule.RuleBuilder().withName(fnName).withArgs("N").withDepth(maxDepth);

        if(maxDepth == 0) {
            skeletonRules = Arrays.asList(
                    builder.withRuleNumber(1).withName(fnName).withArgs("N").withBody("C1").build(),
                    builder.withRuleNumber(2).withName(fnName).withArgs("N").withBody("N").build()
            );
        } else if(maxDepth == 1) {
            skeletonRules = new ArrayList<>();
            skeletonRules.addAll(generateSkeletonRules(0, numFuncs));
            skeletonRules.addAll(Arrays.asList(
                    builder.withRuleNumber(3).withName(fnName).withArgs("N").withBody("add(N, N)").build(),
                    builder.withRuleNumber(4).withName(fnName).withArgs("N").withBody("mul(N, N)").build(),
                    builder.withRuleNumber(5).withName(fnName).withArgs("N").withBody("sub(N, N)").build(),
                    builder.withRuleNumber(6).withName(fnName).withArgs("N").withBody("add(N, C1)").build(),
                    builder.withRuleNumber(7).withName(fnName).withArgs("N").withBody("mul(N, C1)").build(),
                    builder.withRuleNumber(8).withName(fnName).withArgs("N").withBody("sub(N, C1)").build(),
                    builder.withRuleNumber(9).withName(fnName).withArgs("N").withBody("sub(C1, N)").build(),
                    builder.withRuleNumber(10).withName(fnName).withArgs("N").withBody("add(C1, C2)").build(),
                    builder.withRuleNumber(11).withName(fnName).withArgs("N").withBody("mul(C1, C2)").build(),
                    builder.withRuleNumber(12).withName(fnName).withArgs("N").withBody("sub(C1, C2)").build(),
                    builder.withRuleNumber(13).withName(fnName).withArgs("N").withBody(String.format("call(%s, C1)", fnName)).build(),
                    builder.withRuleNumber(14).withName(fnName).withArgs("N").withBody(String.format("call(%s, N)", fnName)).build()
            ));
        } else {
            List<Rule> existingRules = generateSkeletonRules(maxDepth-1, numFuncs);
            skeletonRules = new ArrayList<>();
            skeletonRules.addAll(existingRules);

            int numRules = existingRules.size() + 1;

            for(Rule rule : existingRules) {
                if(rule.depth() == maxDepth - 1) {
                    for (String op : arg_ops) {
                        skeletonRules.add(builder
                                .withRuleNumber(numRules++)
                                .withBody(String.format(op, rule.body()))
                                .build());
                    }

                    for (String op : const_ops) {
                        skeletonRules.add(builder
                                .withRuleNumber(numRules++)
                                .withBody(String.format(op, rule.numConstants() + 1, rule.body()))
                                .build());
                    }

                    skeletonRules.add(builder
                            .withRuleNumber(numRules++)
                            .withBody(String.format("sub(%s, C%d)", rule.body(), rule.numConstants() + 1))
                            .build());

                    for (int i = 0; i < numFuncs; i++) {
                        skeletonRules.add(builder
                                .withRuleNumber(numRules++)
                                .withBody(String.format("call(%s, %s)", functionNames.get(i), rule.body()))
                                .build());
                    }
                }
            }
        }

        return skeletonRules;
    }

    public static void main(String[] args) {
        int maxDepth = 2;
        int numFuncs = 1;

        Preprocessor preproc = new Preprocessor(Arrays.asList("succ"));
        List<Rule> generatedRules = preproc.generateSkeletonRules(maxDepth, numFuncs);

        Path file = Paths.get(String.format("../skeleton_rules/skeleton_rules_%d_%d.lp", maxDepth, numFuncs));
        int maxNumConstants = 0;

        try {
            Files.write(file, "".getBytes());

            for(Rule rule : generatedRules) {
                if(rule.numConstants() > maxNumConstants) {
                    maxNumConstants = rule.numConstants();
                }
                write(file, rule.toString());
            }

            generateChoiceRule(file, maxNumConstants);
            write(file, String.format("num_generated(0..%d).", generatedRules.size()));
        } catch(IOException e) {
            e.printStackTrace();
        }
    }

    private static void generateChoiceRule(Path file, int maxNumConstants) throws IOException {
        String minimiseStmt = "";
        write(file, "1 {\n");

        for(int i = 0; i <= maxNumConstants; i++) {
            String consts = "";
            String expr_consts = "";
            for (int j = 0; j < i; j++) {
                consts += String.format(", C%d", j);
                expr_consts += String.format(": expr_const(C%d) ", j);
            }

            //have to check to put a comma or not;
            String choice = "";
            String min = "";
            if(i == maxNumConstants) {
                choice = String.format("choose(R, N%s) : num_rules(R) : num_generated(N) %s\n", consts, expr_consts);
                min = String.format("choose(R%s)=R ", StringUtils.repeat(", _", i));
            } else {
                choice = String.format("choose(R, N%s) : num_rules(R) : num_generated(N) %s,\n", consts, expr_consts);
                min = String.format("choose(R%s)=R, ", StringUtils.repeat(", _", i));
            }

            minimiseStmt += min;
            write(file, choice);
        }

        write(file, "} 2.\n");

        write(file, String.format("#minimise [%s].\n", minimiseStmt));
    }

    private static void write(Path file, String line) throws IOException {
        Files.write(file, line.getBytes(StandardCharsets.UTF_8), StandardOpenOption.APPEND);
    }
}
