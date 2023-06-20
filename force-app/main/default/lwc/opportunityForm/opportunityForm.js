import { LightningElement, wire, api } from 'lwc';
import OPP_OBJECT from '@salesforce/schema/Opportunity';
import { getFieldValue, getRecord, updateRecord } from 'lightning/uiRecordApi';

import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';
import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';

import {ShowToastEvent} from 'lightning/platformShowToastEvent';

const fields = [NAME_FIELD,TYPE_FIELD,STAGE_FIELD,AMOUNT_FIELD,CLOSEDATE_FIELD];

export default class OpportunityForm extends LightningElement {
   
    objName = OPP_OBJECT;
    
    //@api decorator makes records in datatable dynamic but could fetch data on RecordPage only because RecordPage already contains recordId 
    
    @api recordId   /*= "006Dn000004yBePIAU";*/
    typeOptions;
    stageOptions;
    
    nameValue;
    typeValue;
    stageValue;
    amountValue;
    dateValue;

    @wire(getRecord, {recordId: "$recordId", fields: fields})
    opps({data, error}){
        if (data) {
        console.log(data);
        this.nameValue = data.fields.Name.value;
        this.typeValue = data.fields.Type.value;
        this.stageValue = data.fields.StageName.value;
        this.amountValue = data.fields.Amount.displayValue;
        this.dateValue = data.fields.CloseDate.value;
    }
    };
    
  /*  
    get nameValue(){
        return getFieldValue(this.opps.data, NAME_FIELD);
    }
    get typeValue(){
        return getFieldValue(this.opps.data, TYPE_FIELD);
    }
    get stageValue(){
        return getFieldValue(this.opps.data, STAGE_FIELD);
    }
    get amountValue(){
        return getFieldValue(this.opps.data, AMOUNT_FIELD);
    }
    get dateValue(){
        return getFieldValue(this.opps.data, CLOSEDATE_FIELD);
    }

    */
    @wire(getObjectInfo, {objectApiName: OPP_OBJECT})
    oppObjectInfo;

    @wire(getPicklistValuesByRecordType, {objectApiName: OPP_OBJECT, recordTypeId: '$oppObjectInfo.data.defaultRecordTypeId'})
    picklistHandler({data,error}){
        if (data) {
            console.log(data);
            this.stageOptions = data.picklistFieldValues.StageName.values;
            this.typeOptions = data.picklistFieldValues.Type.values;
        }
        if (error) {
            console.error(error);
        }
    }

    inputData = {};
    handleChange(event){
        this.inputData [event.target.name] = event.target.value;
    }
   
        updateHandler(){
            this.inputData["Id"] = this.recordId;
    
            const recordInput = { fields: this.inputData };
    
            updateRecord(recordInput)
                .then((result) => {
                    this.createToast("Updated","Opportunity is updated","success");
            })
            .catch(error => {
                this.createToast("Error","Try again later!","error");
            })        
        }
        createToast(title,message,variant){
            const toast = new ShowToastEvent({title,message,variant});
            this.dispatchEvent(toast);
        }
                  
        
        /*updateRecord(recordInput)
            .then((result) => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Opportunity updated',
                        variant: 'success'
                    })
                );
               
            })
            .catch(error => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error updating record',
                        message: error.body.message,
                        variant: 'error'
                    })
                );
            });
    }*/
}