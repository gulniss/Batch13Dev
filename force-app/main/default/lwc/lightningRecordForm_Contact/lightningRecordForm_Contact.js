import { LightningElement } from 'lwc';
//Import Object
import CONTACT_OBJECT from '@salesforce/schema/Contact';

//Import Fields
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';

export default class LightningRecordForm_Contact extends LightningElement {
    objectApiName = CONTACT_OBJECT;
    //copy the recordid from org
    recordId;
    fields = [LASTNAME_FIELD, FIRSTNAME_FIELD];
}