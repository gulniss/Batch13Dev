@isTest
public with sharing class SoapCalloutsTest {
    @isTest
    private static void parksCalloutTest(){
        // 1. Set the mock
        ParksServiceMock mock = new ParksServiceMock();
        Test.setMock(WebServiceMock.class, mock);

        // 2. Test the class
        String[] parks = SoapCallouts.parksCallout('United States');

        // 3. Do asserts
        System.assertEquals(3, parks.size());
    }

    @isTest
    private static void doAddCalloutTest() {
        DoAddCalloutMock mock = new DoAddCalloutMock();
        Test.setMock(WebServiceMock.class, mock);

        Double result = SoapCallouts.doAddCallout(20, 25);
        system.assertEquals(45, result);
    }
}
