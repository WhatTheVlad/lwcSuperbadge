/**
 * Created by vmocanu on 03-Feb-22.
 */

@IsTest
private class DivisionByThreeTest {

    @IsTest
    static void testComputeTotalNumbersDivisibleByThree() {

        System.assertEquals(DivisionByThree.computeTotalNumbersDivisibleByThree('23'), 7);
        System.assertEquals(DivisionByThree.computeTotalNumbersDivisibleByThree('0081'), 11);
        System.assertEquals(DivisionByThree.computeTotalNumbersDivisibleByThree('022'), 9);

    }

}