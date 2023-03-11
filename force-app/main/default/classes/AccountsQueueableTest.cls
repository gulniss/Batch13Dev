@isTest 
public class AccountsQueueableTest {
    private testmethod static void testQueueable1() {
        //1. prepare data
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 100; i++) {
            account a = new Account();
            a.name = 'queueable test ' + i;
            a.Active__c = 'Yes';
            a.Description = 'TEST. ';
            listAcc.add(a);
        }
        insert listAcc;
        //1. ends here

        //2 enqueue job in between starttest and stoptest
        Test.startTest();
        List<Account> allAccounts = [select id, name from Account];
        system.enqueueJob(new AccountsQueueable(allAccounts));
        //3 assertion
        integer countAcc = [select COUNT() from account WHERE name like '%--SI'];
        assert.areEqual(100,countAcc);
    }
}