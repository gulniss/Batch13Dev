/* Write a code in Apex that on insert of Contact will check if address_c field has the same value as address_c of related parent account. Ifso, populate hasSameAddress__c field on Contact with value True.
 */
public class ContactTriggerHandlerWShop {
    public static void hasSameAdressCheck(List<Contact> triggerNew){

        Set<Id> accIds = new Set<Id>();
        for (Contact c : triggerNew) {
            if (c.AccountId != null && c.adress__c != null) {
                accIds.add(c.AccountId);
            }
        }

        Map<Id,Account> addresMap = new Map<Id,Account>([SELECT adress__c FROM Account WHERE adress__c != null AND Id IN :accIds]);

        for (Contact con : triggerNew) {
            if (addresMap.get(con.AccountId).adress__c == con.adress__c) {
                con.hasSameAdress__c=true;
            }
        }      
    }
}
    
