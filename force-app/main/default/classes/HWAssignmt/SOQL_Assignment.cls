public class SOQL_Assignment {
    public static void soql_WhereClause(){
        List<Contact> lstcontact = [SELECT id, name FROM Contact WHERE Name LIKE 'A%'];
        system.debug(lstcontact.size());
    }

    public static void soql_FromMethod(){
        List<Contact> lstcontact = [SELECT lastname, phone FROM Contact];
        for (Contact eachCont : lstcontact) {
            System.debug('contacts last name => ' + eachCont.LastName + '--- phone number => ' + eachCont.Phone); 
        }
    }
}