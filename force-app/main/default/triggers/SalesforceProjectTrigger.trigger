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
trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    //check if salesforceproject's trigger is enabled
    TriggerSwitch__c ts = TriggerSwitch__c.getInstance('salesforce_project__c');
    if(!ts.enabled__c){
        return;
    }

    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('calling future method now...');
        SPTriggerHandler.updateProjectDescription(trigger.newmap.keyset());
        system.debug('JUST called future method...');
        //call handler here.
        SPTriggerHandler.createDefaultTickdt(trigger.new);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        //call method to validate ticket completion.
        //SPTriggerHandler.validateProjectCompletion(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if(Trigger.isAfter && Trigger.isUpdate) {
        //call method1
        SPTriggerHandler.projectStatusChange(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}