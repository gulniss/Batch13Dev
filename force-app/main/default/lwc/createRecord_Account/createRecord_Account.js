import { createRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
//import contact object
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class CreateRecord_Account extends LightningElement {
    inputData = {};

    changeHandler(event){
       
        const {name,value} = event.target;
        this.inputData[name] = value;

    }

    createRecordAccount(){
        
        const recordInput ={
            apiName : ACCOUNT_OBJECT.objectApiName,
            fields : this.inputData
        }

        //createRecord(recordInput : recordInputContact)
        createRecord(recordInput)
            .then(result=>{
                const event = new ShowToastEvent({
                    title: 'Record Created',
                    message:
                        'Account Created successfully',
                    variant: 'success'
                });
                this.dispatchEvent(event);
                this.resetForm();
            }                
            )
            .catch(error=>{
                const event = new ShowToastEvent({
                    title: 'Record Error',
                    message: error.body.message,
                        //'Oops! Better luck next time!',
                    variant: 'error'
                });
                this.dispatchEvent(event);
            }                
            )
    }

    resetForm(){
        this.template.querySelector('form.accountForm').reset();
        this.inputData = {};
    }

}