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