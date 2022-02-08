/**
 * Created by vmocanu on 07/02/2022.
 */

public with sharing class ContactController {

    @AuraEnabled(Cacheable=true)
    public static List<Contact> getContacts() {
        throw new AuraHandledException('Forced error');
    }


}