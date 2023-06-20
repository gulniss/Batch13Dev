//  INTEGRATION (Named Credentials)

public with sharing class RestCallout {
    
    //Endpoint : https://th-apex-http-callout.herokuapp.com/animals
    // HTTP Method : GET
    public static HttpResponse getAnimal(){
        // 1.Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        
        // For the Authentication Purpose we can use "Named Credentials" in Org to Specify the callout endpoint's URL and the authentication settings that are required for Salesforce to make callouts to the remote system.
        //By creating Named Credential we give API name to URL and use it as an endpoint.
        //request.setEndpoint('callout:Heroku_App/animals');
        request.setMethod('GET');

      /*  String username = 'jane@test.com';
        String password = 'Test123';
        Blob requestBlob = Blob.valueOf(username + ': ' + password);
        String authorizationString = 'BASIC' + EncodingUtil.base64Encode(requestBlob);
        request.setHeader('Authorization', authorizationString); */

        // 2. Prepare Internet
        Http http = new Http();

        // 3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        // 4. Process HttpResponse
        System.debug(response.getStatusCode());
        System.debug(response.getBody());

        return response;
    }

    //End Point : 'https://api.instantwebtools.net/v1/airlines'
    // Http method : 'GET'
    public static HttpResponse getAirlines(){
       // 1.Prepare HttpRequest and wrap all the necessary data in it.
       HttpRequest request = new HttpRequest();
       request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
       request.setMethod('GET');

       // 2. Prepare Internet  
       Http http = new Http();
       
       // 3. Send the HttpRequest over the internet in order to receive HttpResponse back 
       HttpResponse response = http.send(request);
       
       // 4. Process HttpResponse

       if(response.getStatusCode() == 200){
        String jsonString = response.getBody();
        system.debug(jsonString);
       }

       return response;
    }
    //Endpoint : https://api.onlinewebtutorblog.com/employees
    //Http Method : GET
    public static HttpResponse getEmployees(){
    // 1.Prepare HttpRequest and wrap all the necessary data in it.
       HttpRequest request = new HttpRequest();
       request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
       request.setMethod('GET');

       // 2. Prepare Internet  
       Http http = new Http();
       
       // 3. Send the HttpRequest over the internet in order to receive HttpResponse back 
       HttpResponse response = http.send(request);
       
       // 4. Process HttpResponse

       if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            //System.debug(jsonString);

            // Deserialize JSON format message to APEX Format
            EmployeeResponse empRes = (EmployeeResponse) JSON.deserialize(jsonString, EmployeeResponse.class);

            List<EmployeeResponse.EmployeeWrapper> empData = empRes.data;
            List<Employee__c> employees = new List<Employee__c>();

            for(EmployeeResponse.EmployeeWrapper wrap : empData){
                Employee__c emp = new Employee__c();
                emp.Name = String.valueOf(wrap.id);
                emp.User_Name__c = wrap.username;
                emp.Name__c = wrap.name;
                emp.Email__c = wrap.email;
                emp.Gender__c = wrap.gender;
                emp.Designation__c = wrap.designation;
                emp.Phone__c = wrap.phone_number;
                emp.Address__c = wrap.complete_address;

                employees.add(emp);
            }
            try{
                insert employees;
            }catch(Exception ex){
                System.debug(ex.getMessage());
            }
       }
       return response;
    }

    public static HttpResponse postEmployee(){
        //1. Prepare HttpRequest with body
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('POST');
        //1.a. Set header based on the body type
        request.setHeader('Content-Type', 'application/json');

        EmployeeResponse.EmployeeWrapper ew = new EmployeeResponse.EmployeeWrapper();
        ew.name = 'John Smith';
        ew.username = 'blackhead';
        ew.email = 'js@gmail.com';
        ew.gender = 'Male';
        ew.designation = 'Salesforce Developer';
        ew.phone_number = '987456123';
        ew.complete_address = '8947 Howell Mountains South Kavon, VT 89670-8443';

        String jsonBody = JSON.serialize(ew);

        //1.b Set body for request

        request.setBody(jsonBody);

        //2. Prepare Internet
        Http http = new Http();
        
        //3. Send request and handle response
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        system.debug(response.getStatusCode());
        
        if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            System.debug(jsonString);

            EmployeePostResponse epr = (EmployeePostResponse) JSON.deserialize(jsonString, EmployeePostResponse.class);
            System.debug(epr);
            System.debug('Name : ' + epr.data.name);
            System.debug('UserName : ' + epr.data.username);
            System.debug('Id : ' + epr.data.id);
            System.debug('Designation : ' + epr.data.designation);
            System.debug('Email : ' + epr.data.email);
            System.debug('Phone : ' + epr.data.phone_number);
        }
        return response; 
    }

    // EndPoint : https://api.onlinewebtutorblog.com/employees/1
    // HTTP Method : DELETE
    public static HttpResponse deleteEmployee(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees/1');
        request.setMethod('DELETE');

        Http http = new Http();

        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            System.debug(jsonString);

            // new instance         type casting                        
            EmployeeResponse emr = (EmployeeResponse) JSON.deserialize(jsonString, EmployeeResponse.class);

            System.debug(emr.msg);
        }
        return response;
    }
}
