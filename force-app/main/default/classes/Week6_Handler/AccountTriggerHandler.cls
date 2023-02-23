public class AccountTriggerHandler {
    //a method which updates description if active is yes
    public static void updateDescription(List<Account> accTriggerNew,
                                        List<account> accTriggerOld,
                                        Map<id, account> accTriggerNewMap,
                                        Map<id, account> accTriggerOldMap) {
        for (Account eachAcc : accTriggerNew) {
            Boolean updateDesc = false; // boolean lets update field when if condition is TRUE
            if (Trigger.isInsert && eachAcc.active__c == 'Yes') {
                //update description field
                //eachAcc.Description = 'Account is active now. Enjoy buddy!';
                updateDesc = true;
            }
            if (Trigger.isUpdate) {
                //check if active field is changed from 'No' or '--None--'' to  'Yes'.
                //how to check if Active field is changed?
                    //oldAccount active field != new Account active field.
                //How to get OldAccount and NewAccount's active field?

                //New account active field as below
                string newActive = eachAcc.Active__c;

                //Old account active field
                    //we use oldMap.get(key)
                Account oldAccount = accTriggerOldMap.get(eachAcc.Id);
                //string oldActive = oldAccount.Active__c;

                //check if active field is changed from 'No' or '--None--'' to  'Yes'.
                if(newActive != oldAccount.Active__c && newActive == 'Yes'){
                    //eachAcc.Description = 'Account is active now. Enjoy Enjoy buddy!';
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAcc.Description = 'Account is active now. Enjoy Enjoy Enjoy buddy!';
            }
        }
    }

    //new method here
    public static void updateVipForAllContact (List<Account> accTriggerNew,
        List<account> accTriggerOld,
        Map<id, account> accTriggerNewMap,
        Map<id, account> accTriggerOldMap) {

            //get account ids where VIP field is CHANGED.
            set<Id> accIds = new set<Id>();
            for (Account eachAcc : accTriggerNew) {
                //get old account using Trigger.OldMap
                Account oldAccount = accTriggerOldMap.get(eachAcc.Id);
                //compare old and new VIP fields. If not equal then add ID in SET
                if (eachAcc.vip__c != oldAccount.vip__c) {
                    accIds.add(eachAcc.Id);
                }
            }
        

        //get all contacts of all the account where VIP is changed
        if(!accIds.isEmpty()){
            List<Contact> getContacts = [SELECT id, vip__c, accountId FROM Contact WHERE accountId IN: accIds];
        for (Contact eachContact : getContacts) {
            id accId = eachContact.accountId;
            //get new account from Trigger.newMap using .get(key) method
            Account newAcc = accTriggerNewMap.get(accId);
            //get VIP field value of new Account
            Boolean accVip = newAcc.vip__c;
            eachContact.vip__c = accVip;
        }
        if(!getContacts.isEmpty()){
            update getContacts;
        } 
        }       
    }
}