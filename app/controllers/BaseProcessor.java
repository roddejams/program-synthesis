package controllers;

import akka.actor.UntypedActor;
import com.google.common.collect.ImmutableMap;
import models.IOExample;
import models.IOExamples;
import models.LearningResult;
import models.rules.ChoiceRule;
import models.rules.Match;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public abstract class BaseProcessor extends UntypedActor {

    protected String rulesPath;

    protected static final List<String> arg_ops = Arrays.asList(
            "add(%s, %s)",
            "mul(%s, %s)",
            "sub(%s, %s)");

    protected LearningResult result;
    protected boolean finished = false;
    protected Path haskellFile;
    protected List<String> haskell;
    protected List<IOExample> computedExamples = new ArrayList<>();

    @Override
    public void onReceive(Object msg) throws Exception {
        if(msg instanceof IOExamples) {
            runLearningTask((IOExamples) msg);
        } else if(msg instanceof StatusProtocol.StatusQuery) {
            sender().tell(new StatusProtocol.StatusResult(result, finished), self());
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
            int maxDepth = 3; //TODO: Work out a good way to calc this dynamically
            //int numFuncs = functionNames.size();

            List<ChoiceRule> generatedRules = generateSkeletonRules(maxDepth, numArgs);
            List<ChoiceRule> matchRules = generateMatchRules(numArgs);

            Path skeletonRulePath = writeSkeletonRules(generatedRules, matchRules, maxDepth);

            Path examplesPath = writeExamples(examplesToWrite, numArgs);

            List<String> chosenPredicates = doClingo(skeletonRulePath.toAbsolutePath().toString(), examplesPath.toAbsolutePath().toString(), rulesPath);

            HaskellGenerator generator = new HaskellGenerator(generatedRules, matchRules);
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

    abstract List<ChoiceRule> generateSkeletonRules(int maxDepth, int numArgs);

    abstract Path writeSkeletonRules(List<ChoiceRule> generatedRules, List<ChoiceRule> matchRules, int maxDepth) throws IOException;

    abstract Path writeExamples(IOExamples examples, int numArgs) throws IOException;

    protected List<IOExample> completeExamples(IOExamples inputExamples, String haskellFileLocation) throws IOException, InterruptedException {
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

    protected static List<String> doClingo(String skeletonRulePath, String examplesPath, String rulesPath) throws InterruptedException, IOException {
        List<String> chosenPredicates = new ArrayList<>();

        //Run clingo
      /*Process proc = rt.exec(String.format("C:\\Users\\James\\Documents\\Code\\clingo-3.0.5-win64\\clingo ASP/rules.lp %s %s",
                examplesPath,
                skeletonRulePath));
        Process proc = rt.exec(String.format("/vol/lab/CLASP/clingo 0 ../rules.lp ../factorial_examples.lp %s",
                skeletonRulePath));*/
        ProcessBuilder pb = new ProcessBuilder("clingo",
                rulesPath,
                examplesPath,
                skeletonRulePath);

        pb.directory(new File("bin"));

        Process proc = pb.start();

        BufferedReader stdInput = new BufferedReader(new InputStreamReader(proc.getInputStream()));
        BufferedReader stdError = new BufferedReader(new InputStreamReader(proc.getErrorStream()));


        // Print clingo output
        String s;
        while ((s = stdInput.readLine()) != null) {
            System.out.println(s);
            List<String> splitLine = Arrays.asList(s.split("\\s+"));

            List<String> preds = splitLine.stream().filter(pred -> pred.startsWith("choose")).collect(Collectors.toList());
            if(!preds.isEmpty()) {
                chosenPredicates = preds;
            }
        }

        // Print standard error
        //System.out.println("Error:\n");
        while ((s = stdError.readLine()) != null) {
            System.out.println(s);
        }

        proc.waitFor();

        return chosenPredicates;
    }

    protected void writeHaskell(List<String> haskell, Path haskellFile) throws IOException {
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

    protected List<ChoiceRule> generateMatchRules(int numArgs) {
        String fnName = "f";
        List<String> args = generateArgs(numArgs);

        ChoiceRule.RuleFactory factory = new ChoiceRule.RuleFactory();
        Match.MatchBuilder builder = new Match.MatchBuilder().withArgs(args).withName(fnName);

        for(String arg : args) {
            Map<String, String> map = ImmutableMap.of(arg, "C1");
            factory.addRule(builder.withMapping(map));
        }

        return factory.getRules();
    }

    protected static void write(Path file, String line) throws IOException {
        Files.write(file, line.getBytes(StandardCharsets.UTF_8), StandardOpenOption.APPEND);
    }

    protected static List<String> generateArgs(int numArgs) {
        List<String> args = new ArrayList<>();

        for(int i = 0; i < numArgs; i++) {
            args.add(String.format("N%s", i));
        }

        return args;
    }

    protected static boolean arrayEmpty(Object[] arr) {
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
