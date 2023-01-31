List<String>listStr = new List<String>();
listStr.add('sound good');
listStr.add('ok');
listStr.add('method');
listStr.add('clear');
listStr.add('🙌');
listStr.add('like it');

string concateStr = '';
//left side -> defining new variable, which we can use inside the loop
//new variable(eachStr), will automatically get one by one value from the list
//
for(string eachStr : listStr) {
    system.debug(eachStr);
    concateStr += ' || ' + eachStr;
    //concateStr = concateStr + ' || ' eachStr;
}

system.debug(concateStr);

