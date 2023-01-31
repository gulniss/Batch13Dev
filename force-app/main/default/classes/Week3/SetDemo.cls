public class SetDemo {
    public static void citySet() {
        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('BERLIN');

        system.debug('set of cities ' + cities);
    }

    public static void randomIntegerSet(){
        Set<integer> integerSet = new Set<Integer>();
        integerSet.add(10);
        integerSet.add(15);
        integerSet.add(21);
        integerSet.add(15);
        integerSet.add(10);
        integerSet.add(15);

        System.debug('set of integers ' + integerSet);
    }
    //List<integer> listInteger = new List<integer>{10,15,21,15,15,13};
    
    //create a method, which accepts a list<integer>
    //if our list has duplicate elements it will be removed.

    public static Set<Integer> setFromList (List<Integer> listInt){
        //create new empty set.
        Set<Integer> returnSet = new Set<Integer>();
        //add All the elements of a list using .addAll(list_or_set) method
        returnSet.addAll(listInt);
        //return the newly created set
        return returnSet;
    }

    //we are creating a method 
    //which accepts set<string>
    //returnd? ==>> set<string> by converting each element of the given set to UPPERCASE
    public static Set<String> uppercaseSet(Set<String> setStr) {
        //create a temp set in which we will add uppercase element
        Set<String> upperSet = new Set<String>();

        //for each loop on setStr(passed in parameter)
        for (string eachStr : setStr) {
            string tempStr = eachStr.toUpperCase();
            upperSet.add(tempStr);
        }
        return upperSet;
    }

    
}