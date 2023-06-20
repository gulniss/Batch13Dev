//lightning/ui*Api Wire Adapters & Functions --> lightning/uiObjectInfoApi --> getPicklistValues
import { LightningElement, wire } from 'lwc';

import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';

import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import LEADSOURCE_FIELD from '@salesforce/schema/Opportunity.LeadSource';

import OPPORTUNITY_OBJ from '@salesforce/schema/Opportunity';

export default class GetPicklistValues_Opportunity extends LightningElement {
    stageOptions;
    leadSrcOptions;
    defOppRTId;

    @wire(getObjectInfo, {objectApiName : OPPORTUNITY_OBJ})
    oppHandler({data,error}){
        if(data){
            console.log('Opp Object Data ',data);
            this.defOppRTId = data.defaultRecordTypeId;
        }
    }

    @wire(getPicklistValues,{fieldApiName : STAGENAME_FIELD, recordTypeId : '$defOppRTId'})
    oppStageHandler({data,error}){
        if(data){
            console.log('Opp StageName Picklist Data ',data);
            this.stageOptions = data.values;
        }
        if (error) {
            console.log(error);
        }
    }

    @wire(getPicklistValues,{fieldApiName : LEADSOURCE_FIELD, recordTypeId : '$defOppRTId'})
    oppLeadSrcHandler({data,error}){
        if(data){
            console.log('Opp LeadSource Picklist Data ',data);
            this.leadSrcOptions = data.values;
        }
        if (error) {
            console.log(error);
        }
    }
}