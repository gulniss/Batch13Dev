/*  Assignment – 18
   Create a trigger for Lead object
    o   The trigger should work on before insert and before update
    o   Create a list of Lead and assign Trigger.New values in it.
    o   In Insert case, write a for each loop.
   In the for each loop, print the newly created lead record one 
by one.
    o   In Update case, write a for each loop.
   In the for each loop, print the id, name and Description field 
of lead record is updated.
*/
trigger LeadTrigger on Lead (before insert, before update) {
    List<Lead> leadList = Trigger.new;
    if (Trigger.isBefore && Trigger.isInsert) {
        for(Lead eachLead : leadlist){
            System.debug('eachLead --> ' + eachLead);
        }
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        for (Lead eachLead : leadList) {
            System.debug('eachLead Id --> ' + eachLead.Id + ', Name --> ' + eachLead.Name + ', Description --> ' + eachLead.Description);
        }
    }
}