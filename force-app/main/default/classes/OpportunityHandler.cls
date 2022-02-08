/**
 * Created by vmocanu on 04-Feb-22.
 */

public with sharing class OpportunityHandler {

    public static void createFollowUpTasks (List<Opportunity> oppList) {
        List<Task> taskList = new List<Task>();

        for (Opportunity opp : oppList) {
            if (opp.StageName == 'Closed Won') {
                Task newTask = new Task(Subject = 'Follow Up Test Task', WhatId = opp.Id);
                taskList.add(newTask);
            }
        }

        insert taskList;
    }

}