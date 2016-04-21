package controllers;

import com.google.common.collect.Sets;
import models.IOExample;
import models.IOExamples;
import models.LearningResult;
import org.apache.commons.lang3.StringUtils;
import controllers.rules.ChoiceRule;
import controllers.rules.Rule;
import controllers.rules.Where;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.*;
import java.util.stream.Collectors;

public class Preprocessor {

    private List<String> functionNames;
    private static final List<String> arg_ops = Arrays.asList(
            "add(%s, %s)",
            "mul(%s, %s)",
            "sub(%s, %s)");

    public Preprocessor(List<String> functionNames) {
        this.functionNames = functionNames;
    }

    public List<ChoiceRule> generateSkeletonRules(int maxDepth, int numFuncs, int numArgs) {

        String fnName = functionNames.get(0);
        List<String> args = generateArgs(numArgs);
        List<String> vars = generateWhereVars(maxDepth);

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

        for(int i = 0; i < numArgs; i++) {
            factory.addRule(ruleBuilder.withBody(args.get(i)));
        }

        // Add "rule" rules.
        for(String op : arg_ops) {
            for(int i = 0; i < numArgs; i++) {
                for(int j = 0; j < numArgs; j++) {
                    factory.addRule(ruleBuilder.withBody(String.format(op, args.get(i), args.get(j))));
                }

                factory.addRule(ruleBuilder.withBody(String.format(op, args.get(i), "C1")));

                for(String var : vars) {
                    factory.addRule(ruleBuilder.withBody(String.format(op, args.get(i), var)));
                }
            }
        }

        String callString = "call(%s, (%s " + StringUtils.repeat(", (%s", numArgs - 1) + StringUtils.repeat(")", numArgs + 1);

        Set<String> vargs = new HashSet<>();
        vargs.addAll(args);
        vargs.addAll(vars);
        /*for(int i = 1; i < numArgs; i++) {
            vargs.add("C" + i);
        }*/

        Set<Set<String>> ruleCombinations = Sets.powerSet(vargs).stream().filter(s -> s.size() == numArgs).collect(Collectors.toSet());

        for(String fn : functionNames) {
            for(Set<String> funcArgs : ruleCombinations) {
                List<Object> stringformatArgs = new ArrayList<>();
                stringformatArgs.add(fn);
                stringformatArgs.addAll(funcArgs);
                factory.addRule(ruleBuilder.withBody(String.format(callString, stringformatArgs.toArray())));
            }
        }

        //Add "where" rules.
        for(String var : vars) {
            vargs.remove(var);
            Set<Set<String>> whereCombinations = Sets.powerSet(vargs).stream().filter(s -> s.size() == numArgs).collect(Collectors.toSet());

            for(String op : arg_ops) {
                for(int i = 0; i < numArgs; i++) {
                    for(int j = 0; j < numArgs; j++) {
                        factory.addRule(whereBuilder.withVar(var).withBody(String.format(op, args.get(i), args.get(j))));
                    }

                    factory.addRule(whereBuilder.withVar(var).withBody(String.format(op, args.get(i), "C1")));

                    for(String inner_var : vars) {
                        if(!inner_var.equals(var)) {
                            factory.addRule(whereBuilder.withVar(var).withBody(String.format(op, args.get(i), inner_var)));
                        }
                    }
                }
            }

            for(String fn : functionNames) {
                for(Set<String> funcArgs : whereCombinations) {
                    List<Object> stringformatArgs = new ArrayList<>();
                    stringformatArgs.add(fn);
                    stringformatArgs.addAll(funcArgs);
                    factory.addRule(whereBuilder.withVar(var).withBody(String.format(callString, stringformatArgs.toArray())));
                }
            }

            vargs.add(var);
        }

        return factory.getRules();
    }

    private List<String> generateWhereVars(int depth) {
        List<String> vars = new ArrayList<>();

        for(int i = 0; i < depth; i++) {
            vars.add(String.format("x%s", i));
        }

        return vars;
    }

    private List<String> generateArgs(int numArgs) {
        List<String> args = new ArrayList<>();

        for(int i = 0; i < numArgs; i++) {
            args.add(String.format("N%s", i));
        }

        return args;
    }

    public static LearningResult runLearningTask(IOExamples inputExamples) throws IOException, InterruptedException {
        List<IOExample> examples = inputExamples.getExamples();

        int numArgs = examples.get(0).getInputs().size();
        int maxDepth = 2* numArgs + 1;
        int numFuncs = 1;

        Preprocessor preproc = new Preprocessor(Arrays.asList("f"));
        List<ChoiceRule> generatedRules = preproc.generateSkeletonRules(maxDepth, numFuncs, numArgs);

        Path current = Paths.get("");
        System.out.println("Current dir = " + current.toAbsolutePath().toString());
        Path file = Paths.get(String.format("skeleton_rules/skeleton_rules_%d_%d.lp", maxDepth, numFuncs));

        int maxNumConstants = 0;

        String[] ruleNums = new String[2*maxDepth];
        String[][] whereNums = new String[maxDepth][2*maxDepth];

        try {
            Files.write(file, "".getBytes());

            for(ChoiceRule rule : generatedRules) {
                if(rule.numConstants() > maxNumConstants) {
                    maxNumConstants = rule.numConstants();
                }

                //Fuck about with rule numbers for choice rules later :(
                if(rule instanceof Rule) {
                    int numConsts = rule.numConstants();

                    String nums = ruleNums[numConsts];
                    if(nums == null) {
                        ruleNums[numConsts] = "" + rule.ruleNumber();
                    } else {
                        nums += ";" + rule.ruleNumber();
                        ruleNums[numConsts] = nums;
                    }
                }

                if(rule instanceof Where) {
                    int numConsts = rule.numConstants();
                    String var = ((Where) rule).var();
                    int varNum = Integer.valueOf(var.substring(1));

                    String nums = whereNums[varNum][numConsts];
                    if(nums == null) {
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

            List<String> chosenPredicates = doClingo(file.toAbsolutePath().toString());

            HaskellGenerator generator = new HaskellGenerator(generatedRules);
            List<String> haskell = generator.generateHaskell(chosenPredicates);
            System.out.println(haskell);

            Path haskellFile = Paths.get("haskell/projectout.hs");
            Files.write(haskellFile, "".getBytes());

            for(String line : haskell) {
                write(haskellFile, line);
            }

            return new LearningResult(inputExamples, haskell);

        } catch(Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    private static List<String> doClingo(String skeletonRulePath) throws InterruptedException, IOException {
        List<String> chosenPredicates = new ArrayList<>();

        //Run clingo
        Runtime rt = Runtime.getRuntime();
        Process proc = rt.exec(String.format("C:\\Users\\James\\Documents\\Code\\clingo-3.0.5-win64\\clingo 0 rules.lp tail_fac_examples.lp %s",
                skeletonRulePath));
        /*Process proc = rt.exec(String.format("/vol/lab/CLASP/clingo 0 ../rules.lp ../factorial_examples.lp %s",
                skeletonRulePath));*/

        BufferedReader stdInput = new BufferedReader(new InputStreamReader(proc.getInputStream()));
        BufferedReader stdError = new BufferedReader(new InputStreamReader(proc.getErrorStream()));

        // Print clingo output
        String s;
        while ((s = stdInput.readLine()) != null) {
            System.out.println(s);
            List<String> splitLine = Arrays.asList(s.split("\\s+"));

            chosenPredicates.addAll(splitLine.stream().filter(pred -> pred.startsWith("choose")).collect(Collectors.toList()));
        }

        // Print standard error
        //System.out.println("Error:\n");
        while ((s = stdError.readLine()) != null) {
            System.out.println(s);
        }

        proc.waitFor();

        return chosenPredicates;
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

    private static void write(Path file, String line) throws IOException {
        Files.write(file, line.getBytes(StandardCharsets.UTF_8), StandardOpenOption.APPEND);
    }

    private static boolean arrayEmpty(Object[] arr) {
        boolean empty = true;
        for (Object anArr : arr) {
            if (anArr != null) {
                empty = false;
                break;
            }
        }
        return empty;
    }
}
