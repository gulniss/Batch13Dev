public class ArithmeticCalculation {
    public void addition(Integer x, Integer y) {
        Integer sum = x + y;
        system.debug('Sum => ' + sum);
    }

    public void substruction(Integer x, Integer y){
        Integer sub = x - y;
        system.debug('Substruction => ' + sub);
    }

    public void multiplication(Integer x, Integer y, Integer m){
        Integer mult = x * y * m;
        system.debug('Multiplication => ' + mult);
    }
        
}