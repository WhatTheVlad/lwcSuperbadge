public with sharing class AccountHandler {

    public static void CreateNewOpportunity(List<Account> accts) {
        List<Opportunity> opps = new List<Opportunity>();
        for (Account a : accts) {
            Opportunity opp = new Opportunity();
            opp.Name = a.Name + ' Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
            opp.Discount_Percent__c = 20;
            opps.add(opp);
        }
        if (opps.size() > 0) {
            insert opps;
        }
    }

    public static Account insertNewAccount(String param) {
        Account newAcc = new Account(Name = param);

        try {
            insert newAcc;
        } catch (Exception ex) {
            return null;
        }

        return newAcc;
    }

    public static List<Account> matchBillingAddress(List<Account> accountList) {
        List<Account> resultAccounts = new List<Account>();

        for (Account acc : accountList) {
            if (acc.Match_Billing_Address__c == true) {
                acc.ShippingPostalCode = acc.BillingPostalCode;
            }
            resultAccounts.add(acc);
        }

        return resultAccounts;
    }

}