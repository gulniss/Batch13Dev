import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import CONTACT_FIELD from '@salesforce/schema/Contact';
export default class GetPicklistValuesByRecordType_Contact extends LightningElement {
    europeRTId;
    leadSourceOpt = [];
    levelOptions = [];
    selectedLeadSrc;
    selectedLevel;
    
    @wire(getObjectInfo, {objectApiName:CONTACT_FIELD})
    objInfoHandler({data,error}){
        if(data) {
        console.log('Contact data ',data);
        const rtids = data.recordTypeInfos;
        this.europeRTId = Object.keys(rtids).find(rtid => (rtids[rtid].name === 'Europe'));
        console.log('Europe Record Type Id ',this.europeRTId);
    } if (error) {
        console.error(error);
    }
    }
    @wire(getPicklistValuesByRecordType,{objectApiName: CONTACT_FIELD, recordTypeId: '$europeRTId'})
    pickListHandler({data,error}){
        if (data) {
            console.log('Contact Picklist Data',data); 
            this.leadSourceOpt = this.picklistGenerator(data.picklistFieldValues.LeadSource);
            this.levelOptions = this.picklistGenerator(data.picklistFieldValues.Level__c);
        }
        if (error) {
            console.error(error);
        }
    }
    picklistGenerator(info){
        return info.values.map(item=>({
            label: item.label,
            value: item.value
        }))
    }
    changeHandler(event){
        const field = event.target.name;
        if (field == 'leadSource') {
           this.selectedLeadSrc = event.target.value; 
        } else if (field == 'level') {
            this.selectedLevel = event.target.value;
    }
    }  
}