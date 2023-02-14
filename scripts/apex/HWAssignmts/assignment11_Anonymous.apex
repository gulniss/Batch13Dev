//  Assignment 11   Collections

Map<String,Integer>marksObtainInMaths = new Map<String,Integer>{'0111CE112' => 40, '0111CE102' => 19, '0111CE100' => 33, '0111CE098' => 40};
marksObtainInMaths.put('0111CE001', 47);
marksObtainInMaths.put('0111CE101', 99);
for(string rollNo : marksObtainInMaths.keySet()){
    System.debug('Roll no. -> ' + rollNo);
}
for(integer mark : marksObtainInMaths.values()){
    System.debug('Mark -> ' + mark);
}

Set<String> uniqueRollNumberSet = new Set<String>();
uniqueRollNumberSet = marksObtainInMaths.keySet();
System.debug('uniqueRollNumberSet -> ' + uniqueRollNumberSet);

List<Integer>marksObtainList = new List<Integer>();
marksObtainList = marksObtainInMaths.values();
System.debug('marksObtainList -> ' + marksObtainList);
for(String rollNo : marksObtainInMaths.keySet()){
    Integer markObtained = marksObtainInMaths.get(rollNo);
    if(markObtained < 20){
        System.debug(rollNo + ' is not qualified for next class');
    }
}