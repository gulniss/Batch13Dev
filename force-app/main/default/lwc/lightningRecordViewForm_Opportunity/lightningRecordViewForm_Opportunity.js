import { LightningElement } from 'lwc';

//import object
import OPP_OBJ from '@salesforce/schema/Opportunity';

//import fields
import OPPNAME_FIELD from '@salesforce/schema/Opportunity.Name';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import EXPECTEDREVENUE_FIELD from '@salesforce/schema/Opportunity.ExpectedRevenue';
import ACCNAME_FIELD from '@salesforce/schema/Opportunity.AccountId';

export default class LightningRecordViewForm_Opportunity extends LightningElement {
    fields = {
        OpportunityName : OPPNAME_FIELD,
        CloseDate : CLOSEDATE_FIELD,
        StageName : STAGE_FIELD,
        ExpectedRevenue : EXPECTEDREVENUE_FIELD,
        AccountName : ACCNAME_FIELD   
    }

    objName= OPP_OBJ;
    recordId='006Dn000008c9YHIAY';
}