public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        return [SELECT Id, LastName, FirstName, LeadSource, Name, Email FROM Contact WHERE LeadSource != null LIMIT 10];
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsWithParams(String params) {
        return [SELECT Id, LeadSource, Name, Email FROM Contact WHERE LeadSource =: params LIMIT 10];
    }
   
    @AuraEnabled
     public static List<Contact> getContWithKeyWord(string searchKey) {
        searchKey = '%'+searchKey+'%';
        return [SELECT Id, FirstName, LastName, Title, Email FROM Contact WHERE FirstName LIKE: searchKey OR LastName LIKE: searchKey LIMIT 10];
     }
}