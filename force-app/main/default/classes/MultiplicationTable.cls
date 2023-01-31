public class MultiplicationTable {
    public static void mTable(integer a) {
        if (a > 0) {
            System.debug(a + ' is positive');
        } else if (a == 0) {
            system.debug(a + ' is 0');
        } else {
            system.debug(a + ' is negative');
        }
    }

    public static void mTable2(Integer a){
        integer result;
        for (integer i=1; i<=10; i++) {
            result = a * i;
            System.debug(a + ' * ' + i + ' = ' + result);
        }
    }

    public static void mTable3(){
        integer result1;
        Integer x = 12;
        for (integer i=1; i<=10; i++) {
            result1 = x * i;
            System.debug(x + ' * ' + i + ' = ' + result1);
        }
    }
}