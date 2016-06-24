package controllers;

import akka.actor.UntypedActor;
import models.IOExample;
import models.IOExamples;
import models.LearningResult;
import models.rules.ChoiceRule;
import models.rules.Match;
import org.apache.commons.lang3.exception.ExceptionUtils;

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
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import static java.util.Collections.emptyList;

public abstract class BaseProcessor extends UntypedActor {

    protected String rulesPath;
    protected String fnName = "f";

    protected static List<String> arg_ops = Arrays.asList(
            "add(%s, %s)",
            "mul(%s, %s)",
            "sub(%s, %s)");
            //"div(%s, %s)");

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
        } else if(msg instanceof StatusProtocol.FileQuery) {
            sender().tell(new StatusProtocol.DownloadResult(haskellFile, fnName), self());
        }
    }

    public void runLearningTask(IOExamples inputExamples) {
        List<ChoiceRule> chosenRules = new ArrayList<>();

        try {
            result = new LearningResult(inputExamples, new ArrayList<>(), new ArrayList<>()); // To be returned while not finished;
            if(!inputExamples.getName().isEmpty()) {
                fnName = inputExamples.getName().toLowerCase();
            }

            List<IOExample> examples = removeUncompletedExamples(inputExamples.getExamples());
		
            if (!computedExamples.equals(examples)) {
                //If there's new examples, relearn.
                IOExamples examplesToWrite = new IOExamples();
                examplesToWrite.setExamples(examples);
                examplesToWrite.setName(fnName);

                int numArgs = examples.get(0).getInputs().size();
                int maxDepth = 2; //TODO: Work out a good way to calc this dynamically
                //int numFuncs = functionNames.size();

                List<String> chosenOps = inputExamples.getChosenArithmeticOps();
                if(chosenOps.isEmpty()) {
                    throw new LearningException("Error : The language bias cannot be empty");
                }

                arg_ops = inputExamples.getChosenArgOps();

                List<ChoiceRule> generatedRules = generateSkeletonRules(maxDepth, numArgs, chosenOps, inputExamples.isUseTailRecursion());
                List<ChoiceRule> matchRules = generateMatchRules(numArgs);

                Path skeletonRulePath = writeSkeletonRules(generatedRules, matchRules, maxDepth);

                Path examplesPath = writeExamples(examplesToWrite, numArgs, chosenOps.contains("(%s / %s)"));

                List<String> chosenPredicates = doClingo(skeletonRulePath.toAbsolutePath().toString(), examplesPath.toAbsolutePath().toString());

                if(chosenPredicates.isEmpty()) {
                    throw new LearningException("Error : Learning returned no results. Please try again");
                }

                HaskellGenerator generator = new HaskellGenerator(generatedRules, matchRules);
                haskell = generator.generateHaskell(chosenPredicates);
                chosenRules = generator.getChosenRules();

                System.out.println(haskell);

                //Path haskellFile = Paths.get(current, "program-synthesis/ASP/haskell/projectout.hs");
                haskellFile = File.createTempFile("projectout", ".hs").toPath();
                writeHaskell(haskell, haskellFile, numArgs);
            }

            //Complete examples if necessary
            if (examples.size() != inputExamples.getExamples().size()) {
                List<IOExample> completedExamples = completeExamples(inputExamples, haskellFile.toAbsolutePath().toString());
                examples.addAll(completedExamples);

                computedExamples = examples;
                IOExamples out = new IOExamples(inputExamples);
                out.setExamples(examples);
                out.setName(fnName);

                result = new LearningResult(out, haskell, chosenRules);
            } else {
                computedExamples = inputExamples.getExamples();
                result = new LearningResult(inputExamples, haskell, chosenRules);
            }

            finished = true;
        } catch (LearningException e) {
            finished = true;
            result = new LearningResult(inputExamples, Collections.singletonList(e.getMessage()), emptyList());
        } catch (IOException | InterruptedException | NullPointerException e) {
            finished = true;
            result = new LearningResult(inputExamples, Collections.singletonList("An internal server error occurred : \n" + ExceptionUtils.getStackTrace(e)), emptyList());
            e.printStackTrace();
        }
    }

    abstract List<ChoiceRule> generateSkeletonRules(int maxDepth, int numArgs, List<String> ops, boolean useTailRecursion) throws LearningException;

    abstract Path writeSkeletonRules(List<ChoiceRule> generatedRules, List<ChoiceRule> matchRules, int maxDepth) throws IOException;

    abstract Path writeExamples(IOExamples examples, int numArgs, boolean containsDiv) throws IOException;

    protected List<IOExample> completeExamples(IOExamples inputExamples, String haskellFileLocation) throws IOException, InterruptedException {
        //Get uncompleted examples
        List<IOExample> uncompleted = inputExamples.getExamples().stream().filter(example -> "".equals(example.getOutput())).collect(Collectors.toList());
        String haskellExe = haskellFileLocation.substring(0, haskellFileLocation.length() - 3);

        //Compile Haskell
        ProcessBuilder compBuilder = new ProcessBuilder("ghc", "--make", haskellFileLocation);
        compBuilder.directory(new File("bin"));
        Process compilation = compBuilder.start();

        compilation.waitFor();

        for(IOExample example : uncompleted) {
            List<String> arguments = new ArrayList<>();
            arguments.add(haskellExe);
            arguments.addAll(example.getInputs());

            System.out.println(arguments);
            String[] argArray = arguments.toArray(new String[arguments.size()]);

            ProcessBuilder pb = new ProcessBuilder(argArray);
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

    protected List<String> doClingo(String skeletonRulePath, String examplesPath) throws InterruptedException, IOException, LearningException {
        List<String> chosenPredicates = new ArrayList<>();

        //Run clingo
        String[] procArguments = {"clingo", rulesPath, examplesPath, skeletonRulePath, "../ASP/learned_functions.lp"};
        ProcessBuilder pb = new ProcessBuilder(procArguments);

        pb.directory(new File("bin"));

        Process proc = pb.start();

        BufferedReader stdInput = new BufferedReader(new InputStreamReader(proc.getInputStream()));
        BufferedReader stdError = new BufferedReader(new InputStreamReader(proc.getErrorStream()));

        // Print clingo output
        String s;
        while ((s = stdInput.readLine()) != null) {
            System.out.println(s);
            List<String> splitLine = Arrays.asList(s.split("\\s+"));
            List<String> preds = new ArrayList<>();

            for(String pred : splitLine) {
                if (pred.startsWith("choose")) {
                    preds.add(pred);
                }
                if (pred.contains("UNSATISFIABLE")) {
                    throw new LearningException("An error occurred while learning.\n " +
                            "Either your examples are inconsistent or the learning system is not expressive enough.\n " +
                            "Please modify your examples and try again.");
                }
            }

            if(!preds.isEmpty()) {
                chosenPredicates = preds;
            }
        }

        // Print standard error
        while ((s = stdError.readLine()) != null) {
            System.out.println(s);
        }

        proc.waitFor();

        return chosenPredicates;
    }

    protected void writeHaskell(List<String> haskell, Path haskellFile, int numArgs) throws IOException {
        Files.write(haskellFile, "".getBytes());

        if(numArgs == 1) {
            write(haskellFile, "import System.Environment\n");
            write(haskellFile, "main = do\n");
            write(haskellFile, "\targ:args <- getArgs\n");
            write(haskellFile, String.format("\tputStrLn (show (%s (read arg)))\n", fnName));
            write(haskellFile, "\n");
        } else if(numArgs == 2) {
            write(haskellFile, "import System.Environment\n");
            write(haskellFile, "main = do\n");
            write(haskellFile, "\targ1:arg2:args <- getArgs\n");
            write(haskellFile, String.format("\tputStrLn (show (%s (read arg1) (read arg2)))\n", fnName));
            write(haskellFile, "\n");
        }
        for(String line : haskell) {
            write(haskellFile, line);
        }
    }

    protected List<ChoiceRule> generateMatchRules(int numArgs) {
        List<String> args = generateArgs(numArgs);

        ChoiceRule.RuleFactory factory = new ChoiceRule.RuleFactory();
        Match.MatchBuilder builder = new Match.MatchBuilder().withArgs(args).withName(fnName);

        factory.addRule(builder.withCondition(""));

        for(String arg : args) {
            factory.addRule(builder.withCondition(String.format("%s == %s", arg, "C1")));
        }

        for(String arg : args) {
            args.stream().filter(arg2 -> !arg.equals(arg2)).forEach(arg2 -> {
                factory.addRule(builder.withCondition(String.format("%s == %s", arg, arg2)));
                factory.addRule(builder.withCondition(String.format("%s < %s", arg, arg2)));
            });
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

    public class LearningException extends Exception {
        public LearningException(String message) {
            super(message);
        }
    }
}
