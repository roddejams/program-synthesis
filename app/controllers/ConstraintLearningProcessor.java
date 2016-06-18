package controllers;

import akka.actor.Props;
import com.google.common.collect.Sets;
import models.IOExamples;
import models.rules.ChoiceRule;
import models.rules.EqRule;
import models.rules.Match;
import org.apache.commons.lang3.StringUtils;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;

public class ConstraintLearningProcessor extends BaseProcessor {

    public static Props props = Props.create(ConstraintLearningProcessor.class);

    public ConstraintLearningProcessor() throws LearningException {
        rulesPath = "../ASP/eq/eq_rules.lp";
    }

    private List<String> getLearnedFunctions() throws LearningException {
        List<String> learnedFunctions = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new FileReader("ASP/learned_functions.lp"))) {
            String line = br.readLine();
            if(line != null) {
                String[] fnNames = line.split("\\s+");

                System.out.println(Arrays.asList(fnNames));

                for (int i = 1; i < fnNames.length; i++) {
                    learnedFunctions.add(fnNames[i]);
                }
            }

            return learnedFunctions;
        } catch (IOException e) {
            e.printStackTrace();
            throw new LearningException(e.getMessage());
        }
    }

    @Override
    public List<ChoiceRule> generateSkeletonRules(int maxDepth, int numArgs, List<String> inner_ops, boolean useTailRecursion) throws LearningException {
        List<String> args = generateArgs(numArgs);
        List<String> learnedFunctions = getLearnedFunctions();

        EqRule.EqRuleFactory factory = new EqRule.EqRuleFactory();
        EqRule.EqRuleBuilder ruleBuilder = new EqRule.EqRuleBuilder().withArgs(args).withName(fnName);

        // Depth 0
        factory.addSimpleRule(ruleBuilder.withDepth(0).withBody("CX"));
        for(String arg : args) {
            factory.addSimpleRule(ruleBuilder.withDepth(0).withBody(arg));
        }

        //Depth 1
        for(String arg : args) {
            if(inner_ops.contains("(%s * %s)")) {
                factory.addSimpleRule(ruleBuilder.withDepth(1).withBody(String.format("(%s * %s)", arg, arg)));
            }
            for (String op : inner_ops) {
                factory.addSimpleRule(ruleBuilder.withDepth(1).withBody(String.format(op, arg, "CX")));
            }
        }

        Set<Set<String>> powerSet = Sets.powerSet(new HashSet<>(args)).stream().filter(s -> s.size() == 2).collect(Collectors.toSet());
        for(Set<String> argSet : powerSet) {
            for (String op : inner_ops) {
                factory.addSimpleRule(ruleBuilder.withDepth(1).withBody(String.format(op, argSet.toArray())));
            }
        }

        //Depth 2
        /*factory.getSimpleRules().stream().filter(rule -> ((EqRule) rule).depth() == 1).forEach(rule -> {
            for (String op : inner_ops) {
                for (String arg : args) {
                    factory.addSimpleRule(ruleBuilder.withDepth(2).withBody(String.format(op, rule.body(), arg)));
                    factory.addSimpleRule(ruleBuilder.withDepth(2).withBody(String.format(op, rule.body(), "CX")));
                }
            }
        });*/

        Set<String> simpleRules = factory.getSimpleRules().stream().filter(rule -> ((EqRule) rule).depth() == 1).map(ChoiceRule::body).collect(Collectors.toSet());
        List<Set<String>> cartesianArguments = Collections.nCopies(numArgs, simpleRules);
        Set<List<String>> argCombinations = Sets.cartesianProduct(cartesianArguments);

        String inputString = StringUtils.repeat("(%s, ", numArgs - 1) + "%s" + StringUtils.repeat(")", numArgs - 1);

        for(List<String> funcArgs : argCombinations) {
            String filledInputString = String.format(inputString, funcArgs.toArray());
            factory.addCallRule(ruleBuilder.withBody(String.format("call(%s, %s)", fnName, filledInputString)));
        }

        for(String function : learnedFunctions) {
            if(!Objects.equals(function, fnName)) {
                simpleRules = factory.getSimpleRules().stream().filter(rule -> ((EqRule) rule).depth() <= 1).map(ChoiceRule::body).collect(Collectors.toSet());
                cartesianArguments = Collections.nCopies(numArgs, simpleRules);
                argCombinations = Sets.cartesianProduct(cartesianArguments);

                inputString = StringUtils.repeat("(%s, ", numArgs - 1) + "%s" + StringUtils.repeat(")", numArgs - 1);

                for (List<String> funcArgs : argCombinations) {
                    String filledInputString = String.format(inputString, funcArgs.toArray());
                    factory.addCallRule(ruleBuilder.withBody(String.format("call(%s, %s)", function, filledInputString)));
                }
            }
        }

        //Depth 3+
        //factory.getSimpleRules().stream().filter(rule -> ((EqRule) rule).depth() == 2).forEach(rule -> {
        //    factory.addCallRule(ruleBuilder.withDepth(3).withBody(String.format("call(%s, %s)", fnName, rule.body())));
        //});

        if(!useTailRecursion) {
            for (int i = 2; i <= maxDepth; i++) {
                for (ChoiceRule rule : factory.getCallRules()) {
                    if (((EqRule) rule).depth() == i - 1) {
                        for (String op : arg_ops) {
                            for (String var : args) {
                                factory.addCallRule(ruleBuilder.withDepth(i).withBody(String.format(op, rule.body(), var)));
                            }
                            factory.addCallRule(ruleBuilder.withDepth(i).withBody(String.format(op, rule.body(), "CX")));
                        }
                    }
                }
            }
        }

        return factory.getAllRules();
    }

    @Override
    public Path writeSkeletonRules(List<ChoiceRule> generatedRules, List<ChoiceRule> matchRules, int maxDepth) throws IOException {
        String current = Paths.get("").toAbsolutePath().toString();
        System.out.println("Current dir = " + current);
        //Path file = Paths.get(current, "program-synthesis/ASP/skeleton_rules/tmp_skeleton_rules.lp");
        //Path file = Paths.get(current, "tmp_skeleton_rules.lp");
        Path file = File.createTempFile("tmp_skeleton_rules", ".lp").toPath();
        System.out.println("Writing skeleton rules to " + file.toAbsolutePath().toString());

        int maxNumConstants = 0;
        int maxMatchConstants = 0;

        String[][] ruleNums = new String[2*maxDepth][2];
        String[] matchNums = new String[2*maxDepth];

        try {
            Files.write(file, "".getBytes());

            for(String arg : generatedRules.get(0).args()) {
                write(file, String.format("#domain const_number(%s).\n", arg));
            }

            for(ChoiceRule match : matchRules) {
                Match matchRule = (Match) match;
                if (matchRule.numConstants() > maxMatchConstants) {
                    maxMatchConstants = matchRule.numConstants();
                }

                int numConsts = matchRule.numConstants();
                String nums = matchNums[numConsts];
                if (nums == null) {
                    matchNums[numConsts] = "" + matchRule.ruleNumber();
                } else {
                    nums += ";" + matchRule.ruleNumber();
                    matchNums[numConsts] = nums;
                }

                write(file, matchRule.toString());
            }

            for (ChoiceRule rule : generatedRules) {
                if (rule.numConstants() > maxNumConstants) {
                    maxNumConstants = rule.numConstants();
                }

                //Fuck about with rule numbers for choice rules later :(
                if (rule instanceof EqRule) {
                    int numConsts = rule.numConstants();

                    String nums = ruleNums[numConsts][1];
                    if(!rule.body().contains("call")) {
                        if (nums == null) {
                            ruleNums[numConsts][0] = "" + rule.ruleNumber();
                            ruleNums[numConsts][1] = "" + rule.ruleNumber();
                        } else {
                            nums += ";" + rule.ruleNumber();
                            ruleNums[numConsts][0] = nums;
                            ruleNums[numConsts][1] = nums;
                        }
                    } else {
                        if (nums == null) {
                            ruleNums[numConsts][1] = "" + rule.ruleNumber();
                        } else {
                            nums += ";" + rule.ruleNumber();
                            ruleNums[numConsts][1] = nums;
                        }
                    }
                }

                write(file, rule.toString());
            }

            generateMatchChoices(file, maxMatchConstants, matchNums);
            generateChoiceRule(file, maxNumConstants, ruleNums);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file;
    }

    private void generateMatchChoices(Path file, int maxNumConstants, String[] matchNums) throws IOException {
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
            if(matchNums[i] != null) {
                if (i == maxNumConstants) {
                    choice = String.format("choose_match(R, %s%s) %s\n", matchNums[i], consts, expr_consts);
                } else {
                    choice = String.format("choose_match(R, %s%s) %s,\n", matchNums[i], consts, expr_consts);
                }
            }

            write(file, choice);
        }

        write(file, "} 1 :- num_match(R).\n");
    }

    protected Path writeExamples(IOExamples examples, int numArgs, boolean containsDiv) throws IOException {
        String current = Paths.get("").toAbsolutePath().toString();
        //Path file = Paths.get(current, "program-synthesis/ASP/examples.lp");
        Path file = File.createTempFile("examples", ".lp").toPath();
        System.out.println("Writing examples to " + file.toAbsolutePath().toString());

        try {
            Files.write(file, "".getBytes());
            if(containsDiv) {
                write(file, "expr_const(1;2).\n");
            } else {
                write(file, "expr_const(0;1).\n");
            }
            write(file, "num_rules(1..2).\n");
            write(file, "num_match(1..2).\n");

            //Statically write match statements for now. Will learn these later*
            /*
            if(numArgs == 1) {
                write(file, String.format("match_guard(%s, (R + 1), Input) :- is_call(call(%s, Input)), num_match(R).\n",
                        fnName, fnName));
                //write(file, "match2(f, 1, Input) :- Input == 0, is_call(call(f, Input)).\n");
                //write(file, "match2(f, 2, Input) :- is_call(call(f, Input)).\n");

            } else {
                write(file, String.format("match_guard(%s, (R + 1), (Arg1, Args)) :- is_call(call(%s, (Arg1, Args))), num_match(R).\n",
                        fnName, fnName));
                //write(file, "match2(f, 1, (Arg1, Args)) :- Arg1 == 0, is_call(call(f, (Arg1, Args))).\n");
                //write(file, "match2(f, 2, (Arg1, Args)) :- is_call(call(f, (Arg1, Args))).\n");
            }
            */
            write(file, examples.toString());

        } catch (IOException e) {
            e.printStackTrace();
        }

        return file;
    }

    private static void generateChoiceRule(Path file, int maxNumConstants, String[][] ruleNums) throws IOException {

        String minimiseStmt = "";
        for(int currRule = 1; currRule <= 2; currRule++) {
            minimiseStmt = "";
            write(file, "1 {\n");

            for (int i = 0; i <= maxNumConstants; i++) {
                String consts = "";
                String expr_consts = "";
                for (int j = 0; j < i; j++) {
                    consts += String.format(", C%d", j);
                    expr_consts += String.format(": expr_const(C%d) ", j);
                }

                //have to check to put a comma or not;
                String choice = "";
                String min = "";
                if (ruleNums[i][currRule - 1] != null) {
                    if (i == maxNumConstants) {
                        choice = String.format("choose(%s, %s%s) %s\n", currRule, ruleNums[i][currRule - 1], consts, expr_consts);
                        min = String.format("choose(_, R%s)=R ", StringUtils.repeat(", _", i));
                    } else {
                        choice = String.format("choose(%s, %s%s) %s,\n", currRule, ruleNums[i][currRule - 1], consts, expr_consts);
                        min = String.format("choose(_, R%s)=R, ", StringUtils.repeat(", _", i));
                    }
                } else {
                    if(i == maxNumConstants) {
                        choice = String.format("choose(%s, 0) \n", currRule);
                    } else {
                        choice = String.format("choose(%s, 0),  \n", currRule);
                    }
                }

                minimiseStmt += min;
                write(file, choice);
            }

            //write(file, "} 1 :- num_rules(R).\n");
            write(file, "} 1.\n");

        }
        write(file, String.format("#minimise [%s].\n", minimiseStmt));
    }
}
