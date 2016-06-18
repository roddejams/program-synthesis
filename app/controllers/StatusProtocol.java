package controllers;

import models.LearningResult;

import java.nio.file.Path;

/*
    Status messages. Nothing complicated but an unfortunate necessity of Akka
 */

public class StatusProtocol {

    public static class StatusQuery {
        //Empty!
    }

    public static class FileQuery {
        //Nothing here
    }

    public static class DownloadResult {
        public Path file;
        public String fnName;

        public DownloadResult(Path file, String fnName) {
            this.file = file;
            this.fnName = fnName;
        }
    }

    public static class StatusResult {
        public LearningResult result;
        public boolean finished;

        public StatusResult(LearningResult result, boolean finished) {
            this.result = result;
            this.finished = finished;
        }
    }
}
