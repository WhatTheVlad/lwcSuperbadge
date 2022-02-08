/**
 * Created by vmocanu on 04-Feb-22.
 */

@IsTest
private class AccountTriggerTest {

    @IsTest static void TestCreateAccounts() {
        List<Account> accountList = new List<Account>();

        for (Integer i = 0; i < 200; i++) {
            Account newAccount =  new Account();

            newAccount.BillingState = 'CA';
            newAccount.Name = 'Test Account ' + i;
            accountList.add(newAccount);
        }

        Test.startTest();
        insert accountList;
        Test.stopTest();

        // Verify that 200 new Accounts were inserted
        List<Account> verifyAccts = [SELECT Id FROM Account];
        System.assertEquals(200, verifyAccts.size());

        // Also verify that 200 new Opportunities were inserted
        List<Opportunity> verifyOpps = [SELECT Id FROM Opportunity];
        System.assertEquals(200, verifyOpps.size());
    }

}