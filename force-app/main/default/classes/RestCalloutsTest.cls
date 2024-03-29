@isTest
public with sharing class RestCalloutsTest {
    @isTest
    private static void getAnimalsTest(){
        //1. Set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the Mock
        HttpResponse response = RestCallout.getAnimal();

        //3. Run Asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }

    @isTest
    private static void getEmployeesTest(){
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        HttpResponse response = RestCallout.getEmployees();

        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }

    @isTest 
    private static void postEmployeeTest() {
        RestCalloutsMock mock =new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        HttpResponse response = RestCallout.postEmployee();

        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }

    @isTest 
    private static void deleteEmployeeTest() {
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        test.startTest();
        HttpResponse response = RestCallout.deleteEmployee();
        test.stopTest();

        system.assertEquals(200, response.getStatusCode());
        System.assertEquals('{"error":0,"msg":"data deleted successfully","data":[]}', response.getBody());
    }
}