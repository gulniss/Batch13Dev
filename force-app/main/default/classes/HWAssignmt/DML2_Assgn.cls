/*      Assignment – 16

   In the class DML2_Assgn
    o   Create a method createBulkContacts
   The method creates 5 contacts by name given below.
   Mark Ruffalo
   Mark Ruffalo
   Chris Hemsworth
   Scarlett Johansson
   Scarlett Johansson
    o   Create a method searchForContacts
   The method must accept one incoming string as parameter.
   The method should then find any contact that has a last 
name matching the string that is received as parameter.
   The method should finally return a list of Contact records of 
type List that includes the ID and Name fields.
*/
public class DML2_Assgn {
    public static void createBulkContacts() {
        List<Contact> conList = new List<Contact>();
        Contact con1 = new Contact();
        con1.FirstName = 'Mark';
        con1.LastName = 'Ruffalo';
        conList.add(con1);
        Contact con2 = new Contact();
        con2.FirstName = 'Mark';
        con2.LastName = 'Ruffalo';
        conList.add(con2);
        Contact con3 = new Contact();
        con3.FirstName = 'Chris';
        con3.LastName = 'Hemsworth';
        conList.add(con3);
        Contact con4 = new Contact();
        con4.FirstName = 'Scarlett';
        con4.LastName = 'Johansson';
        conList.add(con4);
        Contact con5 = new Contact();
        con5.FirstName = 'Scarlett';
        con5.LastName = 'Johansson';
        conList.add(con5);
        insert conList; //Insert Contact List
}

public static List<Contact> searchForContacts(String lastName) {
    List<Contact> conList = [SELECT Id, Name FROM Contact WHERE LastName = :lastName];
    return conList;
}
}







/*
public class DML2_Assgn {
    public static void insert_dml() {
       Account acc = new Account();
       acc.Name = 'Gulnar Issayeva Assignment 15';
       acc.Phone = '999999999';
       acc.Industry = 'Entertainment';
       insert acc; 
    }

    public static void updating_dml() {
        Account ac = new Account();
        ac.Name = 'Account created';
        insert ac;
        System.debug('account before updating => ' + ac);
        ac.Name = 'Account updated';
        update ac;
        System.debug('updated account => ' + ac);
    }

    public static void createBulkContacts(){
        List<Contact> listCn = new List<Contact>();
        Contact cn = new Contact();
        cn.FirstName = 'Mark';
        cn.LastName = 'Rufallo';
        listCn.add(cn);

        Contact cn1 = new Contact();
        cn1.FirstName = 'Mark';
        cn1.LastName = 'Rufallo';
        listCn.add(cn1);

        Contact cn2 = new Contact();
        cn2.FirstName = 'Chris';
        cn2.LastName = 'Hemsworth';
        listCn.add(cn2);

        Contact cn3 = new Contact();
        cn3.FirstName = 'Scarlett';
        cn3.LastName = 'Johansson';
        listCn.add(cn3);

        Contact cn4 = new Contact();
        cn4.FirstName = 'Scarlett';
        cn4.LastName = 'Johansson';
        listCn.add(cn4);

        insert listCn;
    }

    public static List<Contact> searchForContacts(String Lname){
        List<Contact> cnt = [SELECT id, firstname, lastname FROM Contact WHERE LastName = : Lname];
        return cnt;
    }
}
*/