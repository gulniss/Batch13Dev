public with sharing class AccountInvocable {
    @invocableMethod(label = 'Close Related Opportunities'
                    category = 'Account')
    public static void closeOpps(List<Id> accountIds) {
        // get all open related Opp-ties
        List<Opportunity> opps = [SELECT id, stageName FROM Opportunity WHERE AccountId IN: accountIds AND stageName NOT IN ('Closed Won','Closed Lost')];

        if (!opps.isEmpty()) {
            for (Opportunity opp : opps) {
                opp.StageName = 'Closed Lost';
            }
            update opps;
        }
    }
}