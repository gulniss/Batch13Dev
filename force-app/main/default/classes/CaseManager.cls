// PREPARING OWN API
// USE Workbench -> REST Explorer -> set Custom EndPoint as <<<services/apexrest/Case/ID(copy any Case Id from ORG)>>> to try prepared API if it could be CalledOut by 3rd Party as intented (we can view Raw Response as well).
// with <<<services/apexrest/v57.0>>> -> Standard API Endpoint we can get all data in our Org. 
//Endpoint : https://devcom279-dev-ed.develop.my.salesforce.com/services/apexrest/Case/
@RestResource(urlMapping = '/Case/*')
global with sharing class CaseManager {
    /* This method is exposing Case record by their Saleforce Id
       Endpoint : https://devcom279-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Dn00000766rGIAQ
       Http Method : GET
    */
    
    @HttpGet
    global static Case getCaseById() {
        RestRequest request = RestContext.request;
        String uri = request.requestURI;

        Integer lastIndex = uri.lastIndexOf('/'); //to find the index of last '/' character
        Id caseId = uri.substring(lastIndex+1);

        Case cs = [SELECT Id, CaseNumber, Subject, Description, Type, Priority
                    FROM Case
                    WHERE id =: caseId];
        return cs;
    }

    /* This method will create a new case record
        We need a body part in JSON format
        Endpoint : https://devcom279-dev-ed.develop.my.salesforce.com/services/apexrest/Case
        Http Method: Post - @HttpPost
        Return : Case Id
    */

    @HttpPost 
    global static Id postCase() {
        //1. Get Incoming REST Callout request context
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
        //2. Deserialize request body to Case SObject
        Case cs = (Case) JSON.deserialize(body, Case.class);
        //3. Insert Case record to SF Org
        insert cs;
        return cs.id;
    }
    
    // This method will update Case record
    //EndPoint : https://devcom279-dev-ed.develop.my.salesforce.com/services/apexrest/Case
    //Http Method: Update - @HttpPatch
    @HttpPatch 
    global static Case patchCase() {
        //1. Get Incoming REST Callout request context
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();

        //2. Deserialize request body to Case SObject
        Case cs = (Case) JSON.deserialize(body, Case.class);

        //3. Update Case record in SF Org
        update cs;
        return cs;
    }
    // This method will upsert Case record (if we don't pass Id it will create record, if we pass Id it'll update record)
    //EndPoint : https://devcom279-dev-ed.develop.my.salesforce.com/services/apexrest/Case
    //Http Method: Update - @HttpPut
    @HttpPut 
    global static Id putCase(String Id, String Subject, String Type, String Priority) {
        Case cs = new Case();
        cs.Id = Id;
        cs.Subject = Subject;
        cs.Priority = Priority;
        cs.Type = Type;
        upsert cs;
        return cs.Id;
    }
    // This method will Delete Case record
    //EndPoint : https://devcom279-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Dn00000766rGIAQ
    //Http Method: Update - @HttpDelete
    @HttpDelete  
    global static String deleteCase() {
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex + 1);
        try {
            Case cs = [SELECT Id FROM Case WHERE Id = :caseId];
            delete cs;
        } catch (Exception ex) {
            return 'Fail';
        }
        return 'Success';
    }
}