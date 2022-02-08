/**
 * Created by vmocanu on 04-Feb-22.
 */

public with sharing class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(String param) {
        List<List<SObject>> resultLists = [FIND :param IN NAME FIELDS RETURNING Contact, Lead];

        return resultLists;
    }

}