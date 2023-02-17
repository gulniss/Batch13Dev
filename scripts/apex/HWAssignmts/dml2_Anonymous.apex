/*      
   Call the methods created above in DML2_Anonymous.apex as follows –
    o   Call createBulkContacts.
    o   Call searchForContacts and pass ‘Ruffalo’ as parameter.
    o   Print the list returned from searchForContacts method.
*/

DML2_Assgn.createBulkContacts();
List<Contact> ruffaloList = DML2_Assgn.searchForContacts('Ruffalo'); 
system.debug('RuffaloList => ' + ruffaloList);



/*
DML2_Assgn.createBulkContacts();
DML2_Assgn.searchForContacts('Ruffalo');
List<Contact> returnedList = DML2_Assgn.searchForContacts('Ruffalo'); 
system.debug(returnedList);

DML2_Assgn.insert_dml();
DML2_Assgn.updating_dml();
*/