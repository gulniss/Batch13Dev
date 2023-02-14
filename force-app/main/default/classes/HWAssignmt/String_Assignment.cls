public class String_Assignment {
    public void String_Assignment() {
        String Localstring = 'Thanks for the session on the string';
        Integer strLength = Localstring.length();
            system.debug('The length of Localstring is ' + strLength);
        String strUpperCase = Localstring.toUpperCase();
            system.debug('Localstring with UpperCase: ' + strUpperCase);
        Boolean strContain = Localstring.contains('session');
            system.debug('Localstring contains < session >: ' + strContain);
        Boolean strContain1 = Localstring.contains('sessions');
            system.debug('Localstring contains < sessions >: ' + strContain1);
        Boolean strContain2 = Localstring.contains('SESSION');
            system.debug('Localstring contains < SESSION >: ' + strContain2);
    }

}