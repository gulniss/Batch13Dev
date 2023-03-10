
trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
     //check if account trigger is enabled
/*     TriggerSwitch__c ts = TriggerSwitch__c.getInstance('account');
    if(!ts.enabled__c){
        return;
    }
    system.debug('--- trigger start ----');
*/
        if (Trigger.isBefore) {
            AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }  
        if (trigger.isAfter && trigger.isUpdate) {
            //call VIP update method
            AccountTriggerHandler.updateVipForAllContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
 
 /*   if(trigger.isBefore){
        for (Account eachAcc : trigger.new) {
            if (trigger.isInsert && eachAcc.Active__c == 'Yes') {
                //update description field
                eachAcc.Description = 'Account is active now. Enjoy buddy!';
            }
        if (trigger.isUpdate) {
        //check if active field is changed from "No" or 'None' to 'Yes'.
        //how to check if Active field is changed?
        //oldAccount active field != new Account active field
        //How to get OldAccount and NewAccount's active field?

        //New account active field as below
        string newActive = eachAcc.Active__c;

        //Old account active field
        //we use oldmap.get(key)
        Account oldAccount = trigger.oldMap.get(eachAcc.Id);
        String oldActive = oldAccount.Active__c;

        //check if active field is changed from 'No' or 'None' to 'Yes'.
        if (newActive !=oldActive && newActive == 'Yes') {
            eachAcc.Description = 'Account is active now.Enjoy!  Enjoy buddy!';
        }
    }
}
} */
   // Map<id, account> trgNewMap = trigger.newMap;
   // Map<id, account> trgOldMap = trigger.oldMap;

  /*  if (trigger.isBefore && trigger.isUpdate) {
        //set<id> accIds = trgNewMap.keySet();
        for (Id eachId : trgNewMap.keySet()) {
            account newAcc = trgNewMap.get(eachId);
            account oldAcc = trgOldMap.get(eachId);

            String newWebsite = newAcc.Website;
            System.debug('newWebsite is ===> ' + newWebsite);
            String oldWebsite = oldAcc.Website;
            System.debug('oldWebsite is ===> ' + oldWebsite);
            if (newWebsite != oldWebsite){
                System.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
            }
        }
    }
*/
   /* if (trigger.isAfter&& trigger.isUpdate){
        system.debug('==AFTER UPDATE==');
        Set<id> accIds = trgNewMap.keySet();
        set<id> accIdsOld = trgOldMap.keySet();

        for(id eachID : accIds){
            System.debug('__for each START --');
            System.debug('each ID is ' + eachID);
            account newAcc = trgNewMap.get(eachID);
            account oldAcc = trgOldMap.get(eachID);
            System.debug('new acc name is ' + newAcc.Name + ', its old name WAS  ' + oldAcc.Name);
            System.debug('--for each END--');

        }
        */
        /*
    if (Trigger.isBefore && Trigger.isInsert){
        System.debug('====BEFORE INSERT====');
        System.debug('trigger.newMap -> ' + trgNewMap); //null -> ID is null, so Map<id,account> is ALSO NULL.
        System.debug('trigger.oldMap -> '+ trgOldMap); //null -> Old is Null
    }
    if (Trigger.isAfter && Trigger.isInsert ) {
        system.debug('==AFTER INSERT==');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes (not null)
        system.debug('trigger.oldMap -> ' + trgoldMap);//null -> no old record so oldmap is null.
    }
    if (Trigger.isBefore && Trigger.isUPdate ) {
        system.debug('==BEFORE Update==');
        system.debug('trigger.newMap -> ' + trgNewMap); //yes
        system.debug('trigger.oldMap -> ' + trgoldMap); //yes
    }
    if (Trigger.isAfter && Trigger.isUpdate ) {
        system.debug('==AFTER UPDATE==');
        system.debug('trigger.newMap -> ' + trgNewMap); //yes
        system.debug('trigger.oldMap -> ' + trgoldMap); //yes
    }
    }
    system.debug('==== trigger end ====');
    */
    
  /*system.debug('--- trigger start ----');

    if (Trigger.isafter && Trigger.isUpdate) {
        for (account oldAcc : trigger.old) {
            system.debug('oldAcc.id is --> ' + oldAcc.Id + ', old accName.name is --> ' + oldAcc.Name);
        }

        for (account newAcc : trigger.new) {
            system.debug('newAcc.id is --> ' + newAcc.Id + ', new accName.name is --> ' + newAcc.Name);
        
    }
    system.debug('==== trigger end ====');
*/
    /*system.debug('--- trigger start ----');

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('trigger.old before insert --> ' + trigger.old);//old is null in insert
    }

    if (Trigger.isafter && Trigger.isInsert) {
        system.debug('trigger.old after insert --> ' + trigger.old);//old is null in insert
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger.ild before udpate --> ' + trigger.old);//yes
    }

    if (Trigger.isafter && Trigger.isUpdate) {
        system.debug('trigger.old after update --> ' + trigger.old);//yes
    }
    system.debug('==== trigger end ====');
   */ 
    /*system.debug('--- trigger start ----');

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('trigger.new before insert --> ' + trigger.new);//value is present(not null), but ID is NULL
    }

    if (Trigger.isafter && Trigger.isInsert) {
        system.debug('trigger.new after insert --> ' + trigger.new);//present, ID also present
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger.new before udpate --> ' + trigger.new);//yes
    }

    if (Trigger.isafter && Trigger.isUpdate) {
        system.debug('trigger.new after update --> ' + trigger.new);//yes
    }
    system.debug('==== trigger end ====');
*/
    /*

    //isAfter will be true in 'after insert' and 'after update' trigger
    List<account> newAccounts = trigger.new;
    if(trigger.isAfter && trigger.isInsert){
        //trigger.new we get latest inserted/updated records
        system.debug('after trigger, new data --> ' + newAccounts);
        system.debug('number of records inserted/updated: ' + newAccounts.size() );

        for (account eachAccount : newAccounts) {
            system.debug('*** account id is ' + eachAccount.Id + ' account name is ' + eachAccount.Name);
        }
    }
*/
   

/*
    if(Trigger.isBefore){
        system.debug('we are in BEFORE trigger.');
        if(Trigger.isInsert){
            system.debug('before insert trigger called.');
        } 
        if(trigger.isUpdate){
            system.debug('before update trigger called.');
        }
    }
    if(Trigger.isAfter){
        system.debug('we are in AFTER trigger. SBNC');
        if(Trigger.isInsert){
            system.debug('after insert trigger called.');
        } 
        if(trigger.isUpdate){
            system.debug('after update trigger called.');
        }
    }
    */
/*
    if(trigger.isBefore && trigger.isInsert){
        system.debug('before insert trigger called.');
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after insert trigger called.');
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('before update trigger called.');
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after update trigger called.');
    }
    
    
*/

    /*
     // system.debug('-------');
    // system.debug('.isInsert --> ' + trigger.isInsert);
    // system.debug('.isUpdate --> ' + trigger.isUpdate);
    // system.debug('-------');

    system.debug('-------');
    system.debug('.isBefore --> ' + trigger.isBefore);
    system.debug('.isAfter --> ' + trigger.isAfter);
    system.debug('-------');

    if(Trigger.isBefore){
        system.debug('before insert account trigger called.');
    }
    if(Trigger.isAfter){
        system.debug('after insert account trigger called.');
    }
    */

}

