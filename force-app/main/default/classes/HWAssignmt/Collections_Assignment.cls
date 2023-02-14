public class Collections_Assignment {
    public static void listMethods(){
        list<String> listWeekDays = new list<String>();
        listWeekDays.add('Monday');
        listWeekDays.add('Tuesday');
        listWeekDays.add('Wednesday');
        listWeekDays.add('Thursday');
        listWeekDays.add('Friday');
        listWeekDays.add('Saturday');
        listWeekDays.add('Sunday');

        System.debug('list of week days ' + listWeekDays); 

        listWeekDays.add('Weekend');
        System.debug('test for add method : ' + listWeekDays); //add(listElement)

        listWeekDays.remove(7);
        System.debug('test for remove method ; ' + listWeekDays); //remove(index)
             
        System.debug('The item of the list with the index 0: ' + listWeekDays.get(0)); //get(index)
      
        System.debug('listWeekDays contains Friday? ' + listWeekDays.contains('Friday')); //contains(listElement)

        System.debug('The list is empty: ' + listWeekDays.isEmpty()); //isEmpty()

        System.debug('The number of elements in the list : ' + listWeekDays.size()); //size()

        System.debug('Test for indexOf() method : '  + listWeekDays.indexOf('Tuesday')); //indexOf(listElement)

        System.debug('Test for clone method : ' + listWeekDays.clone());//clone()

        System.debug('Test for equals(list2) method : ' + listWeekDays.equals(listWeekDays.clone())); //equals(list2)
    }
}