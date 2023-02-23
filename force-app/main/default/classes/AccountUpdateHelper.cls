public class AccountUpdateHelper {
    @InvocableMethod
    public static void updateWebsite(List<id> accountIds) {
        List<Account> listAccounts = [select id, website from Account where id in : accountIds];
        for (Account eachAcc : listAccounts) {
            eachAcc.Website = 'www.softinnovas.com';
        }
        update listAccounts;
    }
}