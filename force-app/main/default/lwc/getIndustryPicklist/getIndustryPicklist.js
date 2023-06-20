import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import RATING_FIELD from '@salesforce/schema/Account.Rating';


export default class GetIndustryPicklist extends LightningElement {

    accRtId;
    industryOptions = [];
    ratingOptions = [];

    @wire(getObjectInfo, {objectApiName : ACCOUNT_OBJECT})
    objInfoHandler({data, error}) {
        if (data) {
            this.accRtId = data.defaultRecordTypeId;
            console.log('Industry data ',data);
        }
        if (error) {
            console.error(error);
        }
    }

    @wire(getPicklistValues,{fieldApiName: INDUSTRY_FIELD, recordTypeId: '$accRtId'})
    picklistHandler({data,error}){
        if (data) {
            console.log(data);
            this.industryOptions = this.picklistGenerator(data);
        }
        if (error) {
            console.error(error);
        }
    }

    picklistGenerator(data){
        return data.values.map(item => ({
            label: item.label,
            value: item.value
        }));
    }

    selectedIndustry;
    industryChangeHandler(event) {
        this.selectedIndustry = event.target.value;
    }

    @wire(getPicklistValues,{fieldApiName: RATING_FIELD, recordTypeId: '$accRtId'})
    picklistHandler1({data,error}){
        if (data) {
            console.log('Rating Data ', data);
            this.ratingOptions = this.picklistGenerator1(data);
        }
        if (error) {
            console.error(error);
        }
    }

    picklistGenerator1(data){
        return data.values.map(item =>({
            label : item.label,
            value : item.value
        }))
    }

    selectedRating
    ratingChangeHandler(event){
        this.selectedRating = event.target.value;
    }
}