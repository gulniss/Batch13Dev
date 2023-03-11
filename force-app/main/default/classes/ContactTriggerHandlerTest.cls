@isTest
public class ContactTriggerHandlerTest {
    @isTest
    private static void testUpdateLeadSource1() {
       Contact c1 = new Contact();
       c1.LastName = 'test contact';
       c1.LeadSource = 'Web';
       insert c1;
       
       try {
        c1.LeadSource = 'Phone';
        update c1;
       } catch (Exception ex) {
        System.debug(ex.getMessage());
        //assert that error is gield custom validation
        assert.isTrue(ex.getMessage().containsAny('FIELD_CUSTOM_VALIDATION_EXCEPTION'));
       }
    }
}