public with sharing class AccountController {

    @AuraEnabled(Cacheable=true)
    public static List<Contact> getRelatedContacts(Id accountId) {
        return [
                SELECT Name, Title, Email, Phone
                FROM Contact
                WHERE AccountId = :accountId
                WITH SECURITY_ENFORCED
        ];
    }

    @AuraEnabled(Cacheable=true)
    public static List<Account> getAccounts() {
        return [
                SELECT Name, AnnualRevenue, Industry
                FROM Account
                WITH SECURITY_ENFORCED
                ORDER BY Name
        ];
    }

}