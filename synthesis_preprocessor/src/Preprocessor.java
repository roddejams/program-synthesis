import org.apache.commons.lang3.StringUtils;
import rules.ChoiceRule;
import rules.Rule;
import rules.Where;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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
        Rule.RuleBuilder ruleBuilder = new Rule.RuleBuilder().withDepth(maxDepth).withName(fnName).withArgs(args);
        Where.WhereBuilder whereBuilder = new Where.WhereBuilder().withArgs(args);

        factory.addRule(ruleBuilder.withBody("C1"));

        // Add "rule" rules.
        for(int i = 0; i < numArgs; i++) {
            factory.addRule(ruleBuilder.withBody(args.get(i)));
        }

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

        for(String fn : functionNames) {
            for(int i = 0; i < numArgs; i++) {
                factory.addRule(ruleBuilder.withBody(String.format("call(%s, %s)", fn, args.get(i))));

                factory.addRule(ruleBuilder.withBody(String.format("call(%s, %s)", fn, "C1")));

                for(String var : vars) {
                    factory.addRule(ruleBuilder.withBody(String.format("call(%s, %s)", fn, var)));
                }
            }
        }

        //Add "where" rules.
        for(String var : vars) {
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
                for(int i = 0; i < numArgs; i++) {
                    factory.addRule(whereBuilder.withVar(var).withBody(String.format("call(%s, %s)", fn, args.get(i))));

                    factory.addRule(whereBuilder.withVar(var).withBody(String.format("call(%s, %s)", fn, "C1")));

                    for(String inner_var : vars) {
                        if(!inner_var.equals(var)) {
                            factory.addRule(whereBuilder.withVar(var).withBody(String.format("call(%s, %s)", fn, inner_var)));
                        }
                    }
                }
            }
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

    public static void main(String[] args) {
        int maxDepth = 2;
        int numFuncs = 1;
        int numArgs = 1;

        Preprocessor preproc = new Preprocessor(Arrays.asList("f"));
        List<ChoiceRule> generatedRules = preproc.generateSkeletonRules(maxDepth, numFuncs, numArgs);

        Path file = Paths.get(String.format("../skeleton_rules/skeleton_rules_%d_%d.lp", maxDepth, numFuncs));
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

            List<String> chosenPredicates = doClingo(file.toFile().getAbsolutePath());

            HaskellGenerator generator = new HaskellGenerator(generatedRules);
            String out = generator.generateHaskell(chosenPredicates);

            System.out.println(out);
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    private static List<String> doClingo(String skeletonRulePath) throws InterruptedException, IOException {
        List<String> chosenPredicates = new ArrayList<>();

        //Run clingo
        Runtime rt = Runtime.getRuntime();
        Process proc = rt.exec(String.format("/vol/lab/CLASP/clingo 0 ../rules.lp ../factorial_examples.lp %s",
                skeletonRulePath));

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
                String choice = "";
                if(c == maxNumConstants) {
                    choice = String.format("choose_where(%s%s) %s\n", whereNums[i][c], consts, expr_consts);
                } else {
                    choice = String.format("choose_where(%s%s) %s,\n", whereNums[i][c], consts, expr_consts);
                }
                write(file, choice);
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
            if(i == maxNumConstants) {
                choice = String.format("choose(R, %s%s) %s\n", ruleNums[i], consts, expr_consts);
                min = String.format("choose_where(R%s)=1 ", StringUtils.repeat(", _", i));
            } else {
                choice = String.format("choose(R, %s%s) %s,\n", ruleNums[i], consts, expr_consts);
                min = String.format("choose_where(R%s)=1, ", StringUtils.repeat(", _", i));
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
}
