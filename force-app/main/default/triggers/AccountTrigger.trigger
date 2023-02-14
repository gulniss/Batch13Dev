trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('--- trigger start ----');

    Map<id, account> trgNewMap = trigger.newMap;
    Map<id, account> trgOldMap = trigger.oldMap;

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

    system.debug('==== trigger end ====');
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