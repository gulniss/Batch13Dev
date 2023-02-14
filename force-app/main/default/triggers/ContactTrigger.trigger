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