import { LightningElement,track,wire} from 'lwc';
//import apex method
import calculateImperative from '@salesforce/apex/Calculator_LWC.calculateImperative';

export default class ImperativeApex_CalculatorNew extends LightningElement {
    a=0; //Default Value
    b=0; //Default Value
    @track imperativeResult=0;

    // Updating A and B when user changes it in the input box
    updateA(event){
        this.a=event.target.value;
    }
    updateB(event){
        this.b=event.target.value;
    }  
    // Imperative method that does the addition
    calcAB(event){
        var operation = event.target.name;
        calculateImperative({a:this.a,b:this.b,operation:operation})
            .then(result => {
                this.imperativeResult = result;                
            })
            .catch(error => {
                this.imperativeResult = undefined;              
            });
    }
}