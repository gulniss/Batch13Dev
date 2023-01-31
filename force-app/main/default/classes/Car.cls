public class Car {
    //this is method body.
    // currently this is in my local machine.
    //we must deploy class to ORG.

    //How to deploy the class to ORG?
        //right click and select sfdx: deploy

    // class variable
    //public means -> accessible outside of the class
    public string carColor = '';
    public string carName;
    
    //private variable --> accessible ONLY inside of the class
    private integer maxSpeed = 140;


public void switchOn(){
    system.debug('starting the car now.');
}

public void drive(){
    system.debug('driving ' + carName);
}

public void driveAtMaxSpeed(){
    string description = 'driving ' + carName +' of color ' + carColor + ' at ' + maxSpeed + ' km/hr'; 
    system.debug(description);
}


//save
//deploy
//nothing will be printed when we Deploy

}


