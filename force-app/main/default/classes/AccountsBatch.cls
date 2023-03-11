public class AccountsBatch implements Database.Batchable<SObject>, database.stateful{
    integer recordCount = 0;
    //start method -> SOQL QUERY -> ACCOUNT -> 50k
    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('inside start method.');
        Database.QueryLocator acc = database.getQueryLocator([select id, name, active__c, Description from account]);
        return acc;
    }
    public void execute(Database.BatchableContext bc, list<account> scope){
        system.debug('inside execute method');
        System.debug('check recordCount FIRST: ' + recordCount);
        //update account records
        List<Account> updateAccount = new List<Account>();
        for (account eachAcc : scope) {
            if (eachAcc.Active__c != 'No') {
                eachAcc.Description += '...Updated via batch';
                updateAccount.add(eachAcc);
            } 
        }
        if (!updateAccount.isEmpty()) {
            update updateAccount;
            recordCount += updateAccount.size();
            System.debug('check recordCount SECOND: ' + recordCount);
        } 
    }
    //finish method
    public void finish(Database.BatchableContext bc){
        system.debug('finished with all records.');
        System.debug('check recordCount FINAL: ' + recordCount);
    }
}