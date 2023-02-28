@isTest 
public class AccountTriggerTest {
    @isTest
    private static void testMethod1() {
        //how to test trigger code?
            //insert/ update/ delete records
            account acc = new account();
            acc.name = 'SI test';
            acc.industry = 'Energy';

            List<Account> listAcc = new List<Account>{acc};
            insert listAcc;

            //asserts
            assert.isTrue(acc.id !=null);
    }

    @isTest
   private static void testMethod2() {
        //how to test trigger code?
            // insert/update/delete records
            Account acc = new account();
            acc.Name = 'SI test';
            acc.Industry = 'Energy';
            insert acc;

            
            acc.name = 'SI test 2';
            update acc;

            assert.areEqual('SI test 2', acc.Name);
   }
}