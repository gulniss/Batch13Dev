public class NewCar {
    Public Integer currentSpeed = 0;
    String carType;
    String carName;

    public String startCar(string carType, string carName) {
        String property = carType + carName;
        system.debug('The car properties : ' + carType + ' ' + carName);
        return property;
    }

    public void accelerate(integer x) {
        currentSpeed += x;
        system.debug('The car speed : ' + currentSpeed + ' km/h.');
    }
    
    public void brake(integer y) {
        currentSpeed -= y;
        system.debug('New speed : ' + currentSpeed + ' km/h.');
        
    }

    public void stopCar() {
        system.debug('Full stop : ' + (currentSpeed - currentSpeed) + ' km/h');
    }

    public void checkSpeed(){
        if (currentSpeed <= 30) {
            system.debug('City Mode');
        } if (currentSpeed >= 31 && currentSpeed <= 60) {
            system.debug('Economy Mode');
        } else {
            system.debug('Sports Mode');
        } 
    }     
}