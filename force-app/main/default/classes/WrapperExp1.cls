public with sharing class WrapperExp1 {
   public DataWrapper data;
   public DataWrapper support;

   public class DataWrapper{
    Integer id;
    String email;
    String first_name;
    String last_name;
    String avatar;
   }

   public class SupportWrapper{
    public String url;
    public String text;
   }
}