import { getFieldValue, getFieldDisplayValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

//Import the fields
/*import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import PHONE_FIELD from '@salesforce/schema/Case.ContactPhone'; */

export default class GetRecord_Case extends LightningElement {
    
    recordId = '500Dn00000766rGIAQ';

    @wire(getRecord, {recordId : '$recordId', layoutTypes : ['Full'], mode :['View']})
    caseRecord;

    get priority(){
        return getFieldValue(this.caseRecord.data, 'Case.Priority');
    }
    get phone(){
        return getFieldValue(this.caseRecord.data, 'Case.ContactPhone');
    }
    get email(){
        return getFieldValue(this.caseRecord.data, 'Case.ContactEmail');
    }
    get accName(){
        return getFieldDisplayValue(this.caseRecord.data, 'Case.Account');
    }
}