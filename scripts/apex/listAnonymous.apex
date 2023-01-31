List<Integer>listInteger = new List<Integer>();
    listInteger.add(10); //index=0
    listInteger.add(15); //index=1
    listInteger.add(21); //index=2
    listInteger.add(15); //index=3
    listInteger.add(15); //index=4
    Integer sumOfList = ListDemo.add(listInteger);
    system.debug('sum of list is ' + sumOfList);





ListDemo.iterateListInteger();
ListDemo.allCats();
string c2 = ListDemo.candidatesList(2);
system.debug('c2 == > ' + c2);
string c5 = ListDemo.candidatesList(5);
system.debug('c5 == > ' + c5);

ListDemo.randomIntegerList();