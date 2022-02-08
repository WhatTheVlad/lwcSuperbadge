/**
 * Created by vmocanu on 04-Feb-22.
 */

@IsTest
public with sharing class TestVerifyDate {



    @IsTest
    static void testDateWithin30Days() {
        Date date1 = Date.today();
        Date date2 = Date.parse('25/02/2022');
        Date date3 = Date.parse('28/02/2022');
        Date date4 = Date.parse('21/05/2022');

        System.assertEquals(VerifyDate.CheckDates(date1, date2), date2);
        System.assertEquals(VerifyDate.CheckDates(date1, date4), date3);
    }

}