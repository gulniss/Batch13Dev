/*  Create an anonymous apex LeadTriggerAnonymous.
o   Create Five leads (By your choice, One by one or by List).
o   Check the console, the newly created leads must be printed.
o   Now go lead records in your org and check for the leads that we 
created above. Update any lead’s Description field as ‘Field Updated
from Anonymous’ and save.
o   Check the console, the updated lead’s id, name, and Description 
must be printed.
*/
List<Lead>leadToInsertList = new List<Lead>();
leadToInsertList.add(new Lead(LastName = 'Lead 1', Company = 'SoftInnovas'));
leadToInsertList.add(new Lead(LastName = 'Lead 2', Company = 'SoftInnovas'));
leadToInsertList.add(new Lead(LastName = 'Lead 3', Company = 'SoftInnovas'));
leadToInsertList.add(new Lead(LastName = 'Lead 4', Company = 'SoftInnovas'));
leadToInsertList.add(new Lead(LastName = 'Lead 5', Company = 'SoftInnovas'));
insert leadToInsertList;