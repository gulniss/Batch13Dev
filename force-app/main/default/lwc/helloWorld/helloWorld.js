import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    //Variables / Properties
    myName = 'Gulnar';
    myAge = 21;
    myAddress; //undefined
    
    //Boolean
    isLWCInteresting = true;
    
    //Arrays - similar to Apex List
    students = ['ferzan', 'tuba', 'sema', 'mahri'];
   
    //Object - {Key : Value} Similar to JSON
    address = {
        city : 'San Antonio',
        state : 'Texas',
        zipcode: 108056
    };

    //Methods
    //Apex - public static string myMethod(Integer a, String myName);
    myMethod(a,myName){
        //let or var, const
        let displayMessage = 'Method Message';
        console.log('Method Variable ' + displayMessage);
        //to use class variables inside of method we need to use => this. (to take current context)
        console.log('Class Variable '+this.myName);
    }
}