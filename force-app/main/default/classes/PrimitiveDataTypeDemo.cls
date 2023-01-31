public class PrimitiveDataTypeDemo {
   public void printBasicDataType(){
        string batchName = 'Batch 13';
        integer totalCandidates = 50;
        boolean isAdminCompleted = true;

        string batchDescription = batchName + ' are the best, yes?';
        system.debug(batchDescription);
        system.debug('total candidates ' + totalCandidates);
        system.debug(isAdminCompleted);

        Decimal dec = 55.49;
        system.debug('decimal value =>' + dec);

        Long lng = 152485639L;
        system.debug('long value => ' + lng);

        Object obj1 = 'this is a string';
        Object obj2 = 55;
        Object obj3 = true;
        system.debug('obj1 value => ' + obj1);

        ID conId = '001Dn00000Aok4TIAR';
        system.debug('id is ' + conId);
   }
}
