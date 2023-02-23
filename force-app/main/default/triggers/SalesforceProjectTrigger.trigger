trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update) {
    if (trigger.isAfter && trigger.isInsert) {
        //call handler here.
        SPTriggerHandler.createDefaultTicket(trigger.new);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        //call method to validate tickets status
        SPTriggerHandler.validateProjectCompletion(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}