@isTest // This is for Class
public class CalculatorAgainTest {
    //1. @isTest annotation
    //2. public or private
    //3. void mandatory
    //4. NO parameters. None
    //5. static is MUST
    @isTest     //This is for Method
    public static void testMethod1() {
        //we can call a parameterized method of other class
        CalculatorAgain c = new CalculatorAgain();
        c.welcomeMessage();
        c.printNewMessage('print this from test class');
    }

    @isTest 
    private static void testAdd1() {
        CalculatorAgain c = new CalculatorAgain();
        Integer sum = c.add(10, 8);
        //asserts, assertionn
        System.assertEquals(18, sum);
    }

    @isTest 
    private static void testAdd2() {
        CalculatorAgain c = new CalculatorAgain();
        Integer sum = c.add(10, 8, 10);
        //asserts, assertionn
        System.assertEquals(28, sum);
    }

    @isTest
    private static void testMethod2() {
        CalculatorAgain c = new CalculatorAgain();
        string rt = c.printAndReturnMessage('test it now');
        system.assertEquals('test it now...Ok cool', rt);
    }
}