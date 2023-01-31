public class ListDemo {
    public static String candidatesList(integer i) {
        //list
            //datatype
        list<string> listCandidates = new List<String>();
        // we can add only string to the above list.
        // note: we CANNOT add integer, boolean, date or any other datatype
        listCandidates.add('Marc');
        listCandidates.add('Ellon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('candidates list is ' + listCandidates);

        string candidate = '';
        if (i>= 0 && i<listCandidates.size()) {
            candidate = listCandidates[i];
        } else {
            candidate = 'No such candidate found. Try again.';
        }
        return candidate;
        //string candidate = listCandidates[i]; //Or listCandidates.get();
        
    }

    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10); //index=0
        listInteger.add(15); //index=1
        listInteger.add(21); //index=2
        listInteger.add(15); //index=3
        listInteger.add(15); //index=4
        system.debug('list of random integer is ' + listInteger);

        //get the value at index 3
        integer index3value = listInteger.get(3);
        //OR
        integer index3value2 = listInteger[3];

        system.debug('value at index 3 is ' + index3value);
        system.debug('value at index 3, again ' + index3value2);

    }

    public static void allCats(){

        cat c1 = new cat('tekir', 'black');
        cat c2 = new cat('fluffykins', 'white');
        cat sfcat = new cat();

        List<cat> cats = new List<cat>();
            //how to add elements of cat class?
            //we can add instances of cat class in list<cat>.
        cats.add(c1);
        cats.add(c2);
        cats.add(sfcat);
        system.debug('all cats ' + cats);
        //check if list is not empty
        if (!cats.isEmpty()) {
           system.debug(cats[0]); 
        }
    }

    //List --- FOR EACH LOOP
    public static void iterateListInteger(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10); //index=0
        listInteger.add(15); //index=1
        listInteger.add(21); //index=2
        listInteger.add(15); //index=3
        listInteger.add(15); //index=4

        for(Integer eachInteger : listInteger){
            system.debug(eachInteger);
        }
    }

    public static integer add(List<Integer>listInt){
        //a temporary variable to store sum of each integer in the list
        integer sum = 0;

        for (integer eachInt : listInt) {
            sum += eachInt;
        }
        return sum;    
    }

        
}