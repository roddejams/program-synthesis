package controllers;

import akka.actor.Props;
import com.google.common.collect.Sets;
import models.IOExamples;
import models.rules.ChoiceRule;
import models.rules.Rule;
import models.rules.Where;
import org.apache.commons.lang3.StringUtils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;

public class InterpretedLearningProcessor extends BaseProcessor {

    public static Props props = Props.create(InterpretedLearningProcessor.class);

    public InterpretedLearningProcessor() {
        rulesPath = "../ASP/rules.lp";
    }

    public List<ChoiceRule> generateSkeletonRules(int maxDepth, int numArgs, List<String> chosenOps, boolean useTailRecursion) {
        List<String> args = generateArgs(numArgs);
        List<String> vars = generateWhereVars(maxDepth);
        List<String> functionNames = Arrays.asList(fnName);

        ChoiceRule.RuleFactory factory = new ChoiceRule.RuleFactory();
        Rule.RuleBuilder ruleBuilder = new Rule.RuleBuilder().withDepth(maxDepth).withName(fnName);
        Where.WhereBuilder whereBuilder = new Where.WhereBuilder().withArgs(args).withName(fnName);

        //Add const rule (for base cases)
        /*List<String> constArgs = new ArrayList<>();
        for(int i = 1; i < numArgs + 1; i++) {
            constArgs.add("C" + i);
        }
        factory.addRule(ruleBuilder.withArgs(constArgs).withBody("C" + (numArgs + 1)));
*/
        ruleBuilder.withArgs(args);
        factory.addRule(ruleBuilder.withBody("C1"));

        for(int i = 0; i < numArgs; i++) {
            factory.addRule(ruleBuilder.withBody(args.get(i)));
        }

        Set<String> vargs = new HashSet<>();
        vargs.addAll(args);
        vargs.add(vars.get(0));
        vargs.add("C1");

        Set<Set<String>> ruleCombinations = Sets.powerSet(vargs).stream().filter(s -> s.size() == 2).collect(Collectors.toSet());

        // Add "rule" rules.
        for(String op : arg_ops) {
            for(String arg : args) {
                factory.addRule(ruleBuilder.withBody(String.format(op, arg, arg)));
            }
            for(Set<String> funcArgs : ruleCombinations) {
                factory.addRule(ruleBuilder.withBody(String.format(op, funcArgs.toArray())));
            }

            /*for(int i = 0; i < numArgs; i++) {
                for(int j = 0; j < numArgs; j++) {
                    factory.addRule(ruleBuilder.withBody(String.format(op, args.get(i), args.get(j))));
                }

                factory.addRule(ruleBuilder.withBody(String.format(op, args.get(i), "C1")));

                for(String var : vars) {
                    factory.addRule(ruleBuilder.withBody(String.format(op, args.get(i), var)));
                }
            }*/
        }

        String callString = "call(%s, %s)";
        String inputString = StringUtils.repeat("(%s, ", numArgs - 1) + "%s" + StringUtils.repeat(")", numArgs - 1);

        Set<String> callVargs = new HashSet<>();
        callVargs.addAll(args);
        callVargs.addAll(vars);
        /*for(int i = 1; i < numArgs; i++) {
            vargs.add("C" + i);
        }*/

        Set<Set<String>> callArgCombinations = Sets.powerSet(callVargs).stream().filter(s -> s.size() == numArgs).collect(Collectors.toSet());

        for(String fn : functionNames) {
            for(Set<String> funcArgs : callArgCombinations) {
                String filledInputString = String.format(inputString, funcArgs.toArray());
                factory.addRule(ruleBuilder.withBody(String.format(callString, fn, filledInputString)));
            }
        }

        //Add all where variables to then be filtered out appropriately.
        vargs.addAll(vars);

        //Add "where" rules.
        for(String var : vars) {
            vargs.remove(var);
            callVargs.remove(var);

            Set<Set<String>> whereRuleCombinations = Sets.powerSet(vargs).stream().filter(s -> s.size() == 2).collect(Collectors.toSet());
            Set<Set<String>> whereCallCombinations = Sets.powerSet(callVargs).stream().filter(s -> s.size() == numArgs).collect(Collectors.toSet());

            for(String op : arg_ops) {
                for(String arg : args) {
                    factory.addRule(whereBuilder.withVar(var).withBody(String.format(op, arg, arg)));
                }
                for(Set<String> funcArgs : whereRuleCombinations) {
                    factory.addRule(whereBuilder.withVar(var).withBody(String.format(op, funcArgs.toArray())));
                }
            }

            for(String fn : functionNames) {
                for(Set<String> funcArgs : whereCallCombinations) {
                    String filledInputString = String.format(inputString, funcArgs.toArray());
                    factory.addRule(whereBuilder.withVar(var).withBody(String.format(callString, fn, filledInputString)));
                }
            }

            //vargs.add(var);
            //callVargs.add(var);
        }

        return factory.getRules();
    }

    private static List<String> generateWhereVars(int depth) {
        List<String> vars = new ArrayList<>();

        for(int i = 0; i < depth; i++) {
            vars.add(String.format("x%s", i));
        }

        return vars;
    }

    public Path writeSkeletonRules(List<ChoiceRule> generatedRules, List<ChoiceRule> matchRules, int maxDepth) throws IOException {
        String current = Paths.get("").toAbsolutePath().toString();
        System.out.println("Current dir = " + current);
        //Path file = Paths.get(current, "program-synthesis/ASP/skeleton_rules/tmp_skeleton_rules.lp");
        //Path file = Paths.get(current, "tmp_skeleton_rules.lp");
        Path file = File.createTempFile("tmp_skeleton_rules", ".lp").toPath();
        System.out.println("Writing skeleton rules to " + file.toAbsolutePath().toString());

        int maxNumConstants = 0;

        String[] ruleNums = new String[2*maxDepth];
        String[][] whereNums = new String[maxDepth][2*maxDepth];

        try {
            Files.write(file, "".getBytes());

            for (ChoiceRule rule : generatedRules) {
                if (rule.numConstants() > maxNumConstants) {
                    maxNumConstants = rule.numConstants();
                }

                //Fuck about with rule numbers for choice rules later :(
                if (rule instanceof Rule) {
                    int numConsts = rule.numConstants();

                    String nums = ruleNums[numConsts];
                    if (nums == null) {
                        ruleNums[numConsts] = "" + rule.ruleNumber();
                    } else {
                        nums += ";" + rule.ruleNumber();
                        ruleNums[numConsts] = nums;
                    }
                }

                if (rule instanceof Where) {
                    int numConsts = rule.numConstants();
                    String var = ((Where) rule).var();
                    int varNum = Integer.valueOf(var.substring(1));

                    String nums = whereNums[varNum][numConsts];
                    if (nums == null) {
                        whereNums[varNum][numConsts] = "" + rule.ruleNumber();
                    } else {
                        nums += ";" + rule.ruleNumber();
                        whereNums[varNum][numConsts] = nums;
                    }
                }

                write(file, rule.toString());
            }

            generateChoiceRule(file, maxNumConstants, ruleNums);
            generateWhereChoices(file, maxNumConstants, maxDepth, whereNums);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file;
    }

    protected Path writeExamples(IOExamples examples, int numArgs, boolean containsDiv) throws IOException {
        String current = Paths.get("").toAbsolutePath().toString();
        //Path file = Paths.get(current, "program-synthesis/ASP/examples.lp");
        Path file = File.createTempFile("examples", ".lp").toPath();
        System.out.println("Writing examples to " + file.toAbsolutePath().toString());

        try {
            Files.write(file, "".getBytes());
            write(file, "expr_const(0;1).\n");
            write(file, "num_rules(1..2).\n");

            //Statically write match statements for now. Will learn these later
            if(numArgs == 1) {
                write(file, "match_guard(f, 1, Input) :- Input == 0, input(call(f, Input)).\n");
                write(file, "match_guard(f, 2, Input) :- input(call(f, Input)).\n");

            } else {
                write(file, "match_guard(f, 1, (Arg1, Args)) :- Arg1 == 0, input(call(f, (Arg1, Args))).\n");
                write(file, "match_guard(f, 2, (Arg1, Args)) :- input(call(f, (Arg1, Args))).\n");
            }
            write(file, examples.toString());

        } catch (IOException e) {
            e.printStackTrace();
        }

        return file;
    }

    private static void generateWhereChoices(Path file, int maxNumConstants, int maxDepth, String[][] whereNums) throws IOException {
        for(int i = 0; i < maxDepth; i++) {
            write(file, "0 {\n");

            for(int c = 0; c <= maxNumConstants; c++) {
                String consts = "";
                String expr_consts = "";
                for (int j = 0; j < c; j++) {
                    consts += String.format(", C%d", j);
                    expr_consts += String.format(": expr_const(C%d) ", j);
                }

                //have to check to put a comma or not;
                String choice;
                if(whereNums[i][c] != null) {
                    if (arrayEmpty(Arrays.copyOfRange(whereNums[i], c+1, maxNumConstants+1))) {
                        choice = String.format("choose_where(%s%s) %s\n", whereNums[i][c], consts, expr_consts);
                    } else {
                        choice = String.format("choose_where(%s%s) %s,\n", whereNums[i][c], consts, expr_consts);
                    }
                    write(file, choice);
                }
            }

            write(file, "} 1.\n");
        }
    }

    private static void generateChoiceRule(Path file, int maxNumConstants, String[] ruleNums) throws IOException {
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
            if(ruleNums[i] != null) {
                if (i == maxNumConstants) {
                    choice = String.format("choose(R, %s%s) %s\n", ruleNums[i], consts, expr_consts);
                    min = String.format("choose_where(R%s)=1 ", StringUtils.repeat(", _", i));
                } else {
                    choice = String.format("choose(R, %s%s) %s,\n", ruleNums[i], consts, expr_consts);
                    min = String.format("choose_where(R%s)=1, ", StringUtils.repeat(", _", i));
                }
            }

            minimiseStmt += min;
            write(file, choice);
        }

        write(file, "} 1 :- num_rules(R).\n");

        write(file, String.format("#minimise [%s].\n", minimiseStmt));
    }
}
