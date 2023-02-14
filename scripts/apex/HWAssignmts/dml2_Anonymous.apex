DML2_Assgn.createBulkContacts();
DML2_Assgn.searchForContacts('Ruffalo');
List<Contact> returnedList = DML2_Assgn.searchForContacts('Ruffalo'); 
system.debug(returnedList);

DML2_Assgn.insert_dml();
DML2_Assgn.updating_dml();