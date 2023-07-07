public class ContactSendKycBatch implements Database.Batchable<SObject>{
    //in order to deploy Batchable class we must implement 3 methods => start, execute, finish
    public Database.QueryLocator start(Database.BatchableContext bc){
        //QueryLocator => devides records of sObject into pages, sort of buildin pagination in Apex.
        //start method returns iterable sObject so we write soql query.
        //[select id, firstName, LastName, send_for_kyc__c, send_for_kyc_date__c from contact];
        Database.QueryLocator q = database.getQueryLocator([select id, firstName, LastName, send_for_kyc__c, send_for_kyc_date__c from contact]);
        return q;
    }

    public void execute(Database.BatchableContext bc, List<Contact> scope){
        system.debug('inside execute method');
        list<Contact> updateContacts = new List<Contact>();
        for(contact eachContact : scope){
            if (eachContact.send_for_kyc__c == false) {
                eachContact.Send_for_KYC__c = true;
                eachContact.Send_for_KYC_Date__c = date.today();
                updateContacts.add(eachContact);
            }
            update updateContacts;
        }
        system.debug('number of records coming in scope is ...' + scope.size());
    }

    public void finish(Database.BatchableContext bc){
        system.debug('finish method called. Batch is done.');
        //update debug log, send email to inform that records updated, or we can start another batch when this is done
    }
}