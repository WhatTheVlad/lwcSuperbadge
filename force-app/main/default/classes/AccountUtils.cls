public class AccountUtils {
    
    public static List<Account> accountsByState(String address) {
        
        List<Account> accountList = [SELECT Id, Name FROM Account WHERE BillingState =: address];  
        
        return accountList;
    }

}