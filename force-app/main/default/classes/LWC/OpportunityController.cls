public with sharing class OpportunityController {
    
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOppsWithParams(String params) {
        return [SELECT Id, Name, ExpectedRevenue, Amount, CloseDate, StageName FROM Opportunity WHERE StageName =: params LIMIT 10];
    }
     
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOppsByStageName(string selectedStage){
        return [Select Name,Amount,StageName from Opportunity where StageName =:selectedStage LIMIT 10];       
    }
}