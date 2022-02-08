/**
 * Created by vmocanu on 04-Feb-22.
 */

public with sharing class StringArrayTest {

    public static List<String> generateStringArray(Integer param) {
        List<String> stringList = new List<String>();

        for (Integer i = 0; i < param; i++) {
            String element = 'Test ' + i;
            stringList.add(element);
        }

        return stringList;
    }

}