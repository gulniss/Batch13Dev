public with sharing class EmployeeResponse {
    public Integer error;
    public String msg;
    public List<EmployeeWrapper> data;

    public class EmployeeWrapper{
        public integer id;
        public string username;
        public string name;
        public string email;
        public string gender;
        public string designation;
        public string phone_number;
        public string complete_address;
    }
}