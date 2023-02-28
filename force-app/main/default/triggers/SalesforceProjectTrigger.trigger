/*trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update) {
    if (trigger.isAfter && trigger.isInsert) {
        //call handler here.
        SPTriggerHandler.createDefaultTicket(trigger.new);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        //call method to validate tickets status
        SPTriggerHandler.validateProjectCompletion(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}
*/
trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update) {

    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('calling future method now...');
        SPTriggerHandler.updateProjectDescription(trigger.newmap.keyset());
        system.debug('JUST called future method...');
        //call handler here.
        SPTriggerHandler.createDefaultTickdt(trigger.new);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        //call method to validate ticket completion.
        SPTriggerHandler.validateProjectCompletion(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}