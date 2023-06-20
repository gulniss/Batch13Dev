/*
import { updateRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class UpdateRecord_Case extends LightningElement {
    inputData = {};
    recordId = "500Dn00000766rGIAQ";

    changeHandler(event){
        //object - event.target.name & event.target.value
        const {name,value} = event.target;
        this.inputData[name] = value;
    }

    updateCaseHandler(){
        this.input['Id'] = this.recordId;
        /**
         * imputData = {
         * Subject : "Test Subject",
         * Description : "Test Description",
         * Id : "500Dn00000766rGIAQ"
         * }
         */
/*
        const recordInput = {fields : this.inputData};

        updateRecord(recordInput)
        .then(result => {
            this.createToast("Update", "Case is updated", "success");
        })
        .catch(error => {
            this.createToast("Error", 'Try again later!', "error");
        })  
    }
    createToast(title,message,variant){
            const toast = new ShowToastEvent({title,message,variant});
            this.dispatchEvent(toast);
        }
} 
*/

import { updateRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class UpdateRecord_Case extends LightningElement {

    inputData = {};
    recordId = "500Dn00000766rGIAQ";

    changeHandler(event){
        //object - event.target.name & event.target.value
        const {name,value} = event.target;
        this.inputData[name] = value;
    }

    updateCaseHandler(){
        this.inputData['Id'] = this.recordId;
        /**
         * inputData = {
         * Subject : "Test Subject",
         * Description : "Test Description",
         * Id : "500Dn00000766rGIAQ"
         * }
         */
        const recordInput = {fields : this.inputData};
        console.log('this.inputDate '+JSON.stringify(this.inputData));
        console.log('recordInput '+JSON.stringify(recordInput));

        updateRecord(recordInput)
        .then(result => {
            this.createToast("Updated","Case is updated","success");
        })
        .catch(error => {
            this.createToast("Error","Try again later!","error");
        })        
    }

    createToast(title,message,variant){
        const toast = new ShowToastEvent({title,message,variant});
        this.dispatchEvent(toast);
    }

}