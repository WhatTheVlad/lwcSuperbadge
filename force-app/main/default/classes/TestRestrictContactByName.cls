/**
 * Created by vmocanu on 04-Feb-22.
 */

@IsTest
public with sharing class TestRestrictContactByName {


    @IsTest
    static void testContactTrigger() {
        Contact contact1 = new Contact(LastName = 'Zaharia');
        Contact contact2 = new Contact(LastName = 'Ghirvu');
        Contact invalidContact = new Contact(LastName = 'INVALIDNAME');

        Test.startTest();
        System.debug('START TEST');
        Database.SaveResult result = Database.insert(invalidContact, false);
        System.debug('result = ' + result);
        System.debug('result.getErrors() = ' + result.getErrors());
        Test.stopTest();

        System.assertEquals(result.isSuccess(), false);
        System.assertEquals(result.getErrors().size() > 0, true);
        System.assertEquals(result.getErrors()[0].getMessage() == 'The Last Name "INVALIDNAME" is not allowed for DML', true);
    }
}