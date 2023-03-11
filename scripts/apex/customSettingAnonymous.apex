Map<string, Country_code__c> mapCountryCode = Country_code__c.getAll();
System.debug(mapCountryCode);

//print 'Country name is United States its code is USA'

for (string eachName : mapCountryCode.keySet()) {
    Country_code__c c = mapCountryCode.get(eachName);
    System.debug('Country name is ' + eachName + ' its code is ' + c.code__c);
}

Country_code__c c1 = Country_code__c.getInstance('India');
system.debug('c1 code is ' + c1.code__c);

//OLD OPTION.
list<Country_code__c> allCC = [select id, name, code__c from Country_code__c];