//map is a keyword to create a map
//1st datatype is of KEY -->> country name
//2nd datatype is of VALUE -->> currency
Map<String,String> mapCntCurrency = new Map<String,String>();

//
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('Germany', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee'); //if we have same key, it will override the value.
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('Canada', 'CA Dollar');
mapCntCurrency.put('El salvador', 'Bitcoin');
mapCntCurrency.put('Japan', 'Yen');
System.debug(mapCntCurrency);

//get value (currency for India and Turkey)
String IndiaCurrency = mapCntCurrency.get('India');
System.debug('India currency is ' + IndiaCurrency);

String TurkeyCurrency = mapCntCurrency.get('Turkey');
System.debug('Turkey currency is ' + TurkeyCurrency);

Set<String> countries = mapCntCurrency.keySet();
System.debug('all countries in the map are ' + countries);

List<String> currencies = mapCntCurrency.values();
System.debug('all currencies ' + currencies);