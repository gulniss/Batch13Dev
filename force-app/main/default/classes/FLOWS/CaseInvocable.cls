public with sharing class CaseInvocable {
    @invocableMethod (label = 'Send Email & Save Activity' category = 'Case')
    public static void sendEmail(List<FlowInput> inputs) {
        
        List<Messaging.SingleEmailMessage> messages = new List<Messaging.SingleEmailMessage>();

        for(FlowInput input : inputs){
            Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
            message.setSubject('Case Created : ' + input.caseNumber);
            message.setPlainTextBody('Hello there, \n'
                                    + 'A case has been created by your query.\n'
                                    + 'Thanks, \n'
                                    + 'Salesforce');
            
            message.setTargetObjectId(input.contactId);
            message.setSaveAsActivity(true);

            messages.add(message);
        }

        Messaging.sendEmail(messages);
    }

    //Inner Class - Wrapper Class
    public class FlowInput{
        @invocableVariable(label = 'Case Number' required = true)
        public String caseNumber;

        @invocableVariable(label = 'Contact Id' required = true)
        public Id contactId;
    }
}