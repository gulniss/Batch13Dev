@istest
public with sharing class ContactTriggerTest {
    static testMethod void hasSameAdressTest(){
        
        TestDataFactory.createAccountWithContact(10, 200);
        List<Contact> conList= [SELECT adress__c , Account.Adress__c, hasSameAdress__c FROM Contact];

        Test.startTest();
         for (contact con : conList) {
            if (con.adress__c == con.account.adress__c) {
                assert.isTrue(con.hasSameAdress__c == true);
            }else {
                assert.isTrue(con.hasSameAdress__c == false);
            }
         }
        Test.stopTest();
    }
}