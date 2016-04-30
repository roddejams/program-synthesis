package controllers;

import models.LearningResult;

/*
    Status messages. Nothing complicated but an unfortunate necessity of Akka
 */

public class StatusProtocol {

    public static class StatusQuery {
        //Empty!
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
