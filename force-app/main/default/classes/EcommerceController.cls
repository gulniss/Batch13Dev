public with sharing class EcommerceController {
    @AuraEnabled
    public static List<Ecommerce_Product__c> getProducts(Integer amount) {
        return [SELECT Id, Name, Brand__c, Category__c, Price__c, Title__c FROM Ecommerce_Product__c WHERE Price__c <= :amount WITH SECURITY_ENFORCED];
    }
}