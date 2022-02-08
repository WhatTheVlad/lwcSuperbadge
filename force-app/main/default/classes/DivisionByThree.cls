/**
 * Created by vmocanu on 03-Feb-22.
 */

public with sharing class DivisionByThree {

    @AuraEnabled
    public static Integer computeTotalNumbersDivisibleByThree (String testNumber) {

        List<Integer> numbersDivisibleByThree = new List<Integer>();
        List<String> numberAsList = testNumber.split('');
        List<String> copyOfNumberAsList = numberAsList;
        List<Integer> oneToNine = new List<Integer> {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};

        for ( Integer i = 0; i < numberAsList.size(); i++) {
            Integer newNumber = 0;

            for (Integer j : oneToNine) {
                copyOfNumberAsList[i] = String.valueOf(j);
                newNumber = getDecimalFromStringList(copyOfNumberAsList);
                Integer remainder = Math.mod(newNumber, 3);

                if (remainder == 0 && !numbersDivisibleByThree.contains(newNumber)) {
                    numbersDivisibleByThree.add(newNumber);
                }

            }
            copyOfNumberAsList = testNumber.split('');
        }

        return numbersDivisibleByThree.size();
    }

    private static Integer getDecimalFromStringList(List<String> listString) {
        String numberAsString = '';

        for (String s : listString) {
            numberAsString += s;
        }

        return Integer.valueOf(numberAsString);
    }

}