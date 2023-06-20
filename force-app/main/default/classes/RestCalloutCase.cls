/*      INTEGRATION BETWEEN TWO ORGs
1. Create Apex Rest Web Service Class in Org 1 (Target Org)(CaseManager), use Developer Console;
2. Create RestCalloutCase class in Org 2 (Source Org), use Developer Console, call the class.method with apex. 
Now you are going to get the case information from Org 1 to Org 2.
Next Steps to setup the authorization part to support the integration:
1. Create a Connected Apps in Org 1
2. Create Auth. Provider in Org 2 (here copy the callback URL and paste in      Connected Apps callback url)
3. Create Named Credential in Org 2. (Here URL, copy the Org 1, classic url)
*/
public with sharing class RestCalloutCase {
    public static HttpResponse getCase() {
        //1. Prepare Http Request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:NC_OrgIntegration/services/apexrest/Case/500Do000001c22dIAA');
        request.setMethod('GET');

        //2. Prepare Internet
        Http http = new Http();

        //3. Send HttpRequest over internet
        HttpResponse response = http.send(request);

        //4. Process Httpresponse
        if (response.getStatusCode() == 200) {
            System.debug(response.getStatus());
            System.debug('JSON FORMAT : ' + response.getBody());
            String body = response.getBody();
            Case cs = (Case)JSON.deserialize(body, Case.class);
            System.debug('Case Object : ' + cs);
        }
        return response;
    }
}