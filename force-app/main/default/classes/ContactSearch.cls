/**
 * Created by vmocanu on 04-Feb-22.
 */

public with sharing class ContactSearch {

    public static List<Contact> searchForContacts(String lastName, String mailingPostalCode) {

        List<Contact> contactList = [SELECT Id, Name FROM Contact WHERE LastName =: lastName AND MailingPostalCode =: mailingPostalCode];

        return contactList;
    }

}