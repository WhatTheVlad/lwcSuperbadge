/**
 * Created by vmocanu on 04-Feb-22.
 */

public with sharing class AccountTriggerHandler {

    public static void CreateAccounts(List<Account> accounts) {
        for (Account acc : accounts) {
            if (acc.ShippingState != acc.BillingState) {
                System.debug('ShippingState != BillingState');
                acc.ShippingState = acc.BillingState;
            }
        }

    }

}