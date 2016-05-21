package controllers;

import akka.actor.Props;
import akka.actor.UntypedActor;
import com.google.common.collect.Sets;
import models.IOExample;
import models.IOExamples;
import models.LearningResult;
import models.rules.ChoiceRule;
import models.rules.EqRule;
import models.rules.Rule;
import models.rules.Where;
import org.apache.commons.lang3.StringUtils;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.*;
import java.util.stream.Collectors;

import static controllers.StatusProtocol.*;

public class LearningProcessor extends UntypedActor {

    public static Props props = Props.create(LearningProcessor.class);

    private static List<String> functionNames = Arrays.asList("f");
    private static final List<String> arg_ops = Arrays.asList(
            "add(%s, %s)",
            "mul(%s, %s)",
            "sub(%s, %s)");

    private static final List<String> inner_ops = Arrays.asList(
            "(%s + %s)",
            "(%s * %s)",
            "(%s - %s)");

    private LearningResult result;
    private boolean finished = false;
    private Path haskellFile;
    private List<String> haskell;
    private List<IOExample> computedExamples = new ArrayList<>();

    @Override
    public void onReceive(Object msg) throws Exception {
        if(msg instanceof IOExamples) {
            runLearningTask((IOExamples) msg);
        } else if(msg instanceof StatusQuery) {
            sender().tell(new StatusResult(result, finished), self());
        }
    }

    public void runLearningTask(IOExamples inputExamples) throws IOException, InterruptedException {
        result = new LearningResult(inputExamples, new ArrayList<>()); // To be returned while not finished;

        List<IOExample> examples = removeUncompletedExamples(inputExamples.getExamples());

        if(!computedExamples.equals(examples)) {
            //If there's new examples, relearn.
            IOExamples examplesToWrite = new IOExamples();
            examplesToWrite.setExamples(examples);

            int numArgs = examples.get(0).getInputs().size();
            int maxDepth = 2; //TODO: Work out a good way to calc this dynamically
            int numFuncs = functionNames.size();

            List<ChoiceRule> generatedRules = generateSkeletonRules(maxDepth, numFuncs, numArgs);

            Path skeletonRulePath = writeSkeletonRules(generatedRules, maxDepth, numFuncs);

            Path examplesPath = writeExamples(examplesToWrite, numArgs);

            List<String> chosenPredicates = doClingo(skeletonRulePath.toAbsolutePath().toString(), examplesPath.toAbsolutePath().toString());

            HaskellGenerator generator = new HaskellGenerator(generatedRules);
            haskell = generator.generateHaskell(chosenPredicates);
            System.out.println(haskell);

            //Path haskellFile = Paths.get(current, "program-synthesis/ASP/haskell/projectout.hs");
            haskellFile = File.createTempFile("projectout", ".hs").toPath();
            writeHaskell(haskell, haskellFile);
        }

        //Complete examples if necessary
        if (examples.size() != inputExamples.getExamples().size()) {
            List<IOExample> completedExamples = completeExamples(inputExamples, haskellFile.toAbsolutePath().toString());
            computedExamples = completedExamples;
            examples.addAll(completedExamples);

            IOExamples out = new IOExamples();
            out.setExamples(examples);

            result = new LearningResult(out, haskell);
        } else {
            computedExamples = inputExamples.getExamples();
            result = new LearningResult(inputExamples, haskell);
        }

        finished = true;
    }

    private void writeHaskell(List<String> haskell, Path haskellFile) throws IOException {
        Files.write(haskellFile, "".getBytes());

        write(haskellFile, "import System.Environment\n");
        write(haskellFile, "main = do\n");
        write(haskellFile, "\targ:args <- getArgs\n");
        write(haskellFile, "\tputStrLn (show (f (read arg)))\n");
        write(haskellFile, "\n");

        for(String line : haskell) {
            write(haskellFile, line);
        }
    }

    public static List<ChoiceRule> generateEqSkeletonRules(int maxDepth, int numArgs) {
        String fnName = "f";
        List<String> args = generateArgs(numArgs);

        EqRule.EqRuleFactory factory = new EqRule.EqRuleFactory();
        EqRule.EqRuleBuilder ruleBuilder = new EqRule.EqRuleBuilder().withArgs(args).withName(fnName);

        // Depth 0
        factory.addSimpleRule(ruleBuilder.withDepth(0).withBody("CX"));
        for(String arg : args) {
            factory.addSimpleRule(ruleBuilder.withDepth(0).withBody(arg));
        }

        //Depth 1
        for(String arg : args) {
            factory.addSimpleRule(ruleBuilder.withDepth(1).withBody(String.format("(%s * %s)", arg, arg)));
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
        factory.getSimpleRules().stream().filter(rule -> ((EqRule) rule).depth() == 1).forEach(rule -> {
            for (String op : inner_ops) {
                for (String arg : args) {
                    factory.addSimpleRule(ruleBuilder.withDepth(2).withBody(String.format(op, rule.body(), arg)));
                    factory.addSimpleRule(ruleBuilder.withDepth(2).withBody(String.format(op, rule.body(), "CX")));
                }
            }
        });

        Set<String> simpleRules = factory.getSimpleRules().stream().filter(rule -> ((EqRule) rule).depth() == 1).map(ChoiceRule::body).collect(Collectors.toSet());
        List<Set<String>> cartesianArguments = Collections.nCopies(numArgs, simpleRules);
        Set<List<String>> argCombinations = Sets.cartesianProduct(cartesianArguments);

        String inputString = StringUtils.repeat("(%s, ", numArgs - 1) + "%s" + StringUtils.repeat(")", numArgs - 1);

        for(List<String> funcArgs : argCombinations) {
            String filledInputString = String.format(inputString, funcArgs.toArray());
            factory.addCallRule(ruleBuilder.withBody(String.format("call(%s, %s)", fnName, filledInputString)));
        }

        //Depth 3+
        //factory.getSimpleRules().stream().filter(rule -> ((EqRule) rule).depth() == 2).forEach(rule -> {
        //    factory.addCallRule(ruleBuilder.withDepth(3).withBody(String.format("call(%s, %s)", fnName, rule.body())));
        //});

        if(numArgs == 1) {
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

    public static List<ChoiceRule> generateSkeletonRules(int maxDepth, int numFuncs, int numArgs) {

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

    private static List<String> generateArgs(int numArgs) {
        List<String> args = new ArrayList<>();

        for(int i = 0; i < numArgs; i++) {
            args.add(String.format("N%s", i));
        }

        return args;
    }

    private static Path writeExamples(IOExamples examples, int numArgs) throws IOException {
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
                write(file, "match2(f, 1, Input) :- Input == 0, input(call(f, Input)).\n");
                write(file, "match2(f, 2, Input) :- input(call(f, Input)).\n");

            } else {
                write(file, "match2(f, 1, (Arg1, Args)) :- Arg1 == 0, input(call(f, (Arg1, Args))).\n");
                write(file, "match2(f, 2, (Arg1, Args)) :- input(call(f, (Arg1, Args))).\n");
            }
            write(file, examples.toString());

        } catch (IOException e) {
            e.printStackTrace();
        }

        return file;
    }

    public static Path writeSkeletonRules(List<ChoiceRule> generatedRules, int maxDepth, int numFuncs) throws IOException {
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

    private List<IOExample> completeExamples(IOExamples inputExamples, String haskellFileLocation) throws IOException, InterruptedException {
        //Get uncompleted examples
        List<IOExample> uncompleted = inputExamples.getExamples().stream().filter(example -> "".equals(example.getOutput())).collect(Collectors.toList());
        String haskellExe = haskellFileLocation.substring(0, haskellFileLocation.length() - 3);

        //Compile Haskell
        //Runtime rt = Runtime.getRuntime();
        //rt.exec(String.format("/usr/bin/ghc -o %s --make %s", haskellExe, haskellFileLocation));
        ProcessBuilder compBuilder = new ProcessBuilder("ghc", "--make", haskellFileLocation);
        compBuilder.directory(new File("bin"));
        Process compilation = compBuilder.start();

        compilation.waitFor();

        for(IOExample example : uncompleted) {
            String argString = example.getInputs().toString();
            argString = argString.replace("[", "");
            argString = argString.replace("]", "");
            argString = argString.replace(",", " ");

            ProcessBuilder pb = new ProcessBuilder(haskellExe, argString);
            //Process proc = rt.exec(String.format("%s %s", haskellExe, argString));
            Process proc = pb.start();

            BufferedReader stdInput = new BufferedReader(new InputStreamReader(proc.getInputStream()));

            String s;
            while ((s = stdInput.readLine()) != null) {
                example.setOutput(s);
            }
        }

        return uncompleted;
    }

    private List<IOExample> removeUncompletedExamples(List<IOExample> allExamples) {
        return allExamples.stream().filter(example -> !"".equals(example.getOutput())).collect(Collectors.toList());
    }

    private static List<String> doClingo(String skeletonRulePath, String examplesPath) throws InterruptedException, IOException {
        List<String> chosenPredicates = new ArrayList<>();

        //Run clingo
        Runtime rt = Runtime.getRuntime();
      /*Process proc = rt.exec(String.format("C:\\Users\\James\\Documents\\Code\\clingo-3.0.5-win64\\clingo ASP/rules.lp %s %s",
                examplesPath,
                skeletonRulePath));
        Process proc = rt.exec(String.format("/vol/lab/CLASP/clingo 0 ../rules.lp ../factorial_examples.lp %s",
                skeletonRulePath));*/
	    ProcessBuilder pb = new ProcessBuilder("clingo", "../ASP/rules.lp",
            examplesPath,
            skeletonRulePath);

        pb.directory(new File("bin/"));

        Process proc = pb.start();
	
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
