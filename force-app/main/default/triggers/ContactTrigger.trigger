/*      Assignment – 17
   Create a trigger for contact object
    o   Write a system.debug for before update.
    o   Write a system.debug for after update.
   Try updating  an existing contact and see the debugs in Developer 
console
*/
/*
trigger ContactTrigger on Contact (before update, after update) {
    if(Trigger.isBefore){
       System.debug('Before update trigger called');
    }
    if(Trigger.isAfter){
        system.debug('After update trigger called');
    }
}
*/
/*
trigger ContactTrigger on Contact (before update, after update) {
if(Trigger.isBefore){
   System.debug('Before trigger => ' + Trigger.isBefore);
if(Trigger.isUpdate){
    system.debug('Before update trigger called ' + Trigger.new);
} 
}

if(Trigger.isAfter){
   system.debug('After trigger => ' + Trigger.isAfter);
if(Trigger.isUpdate){
    system.debug('after update trigger called ' + Trigger.new);
} 
}
}
*/

trigger ContactTrigger on Contact (before insert){
    if (trigger.isBefore && trigger.isInsert) {
        //call Handler.method 
        ContactTriggerHandlerWShop.hasSameAdressCheck(trigger.New);
    }
}