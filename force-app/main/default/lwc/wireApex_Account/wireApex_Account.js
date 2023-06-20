import { LightningElement, wire} from 'lwc';
//import apex method
import getTenAccounts from '@salesforce/apex/AccountController_LWC.getTenAccounts';
const COLUMNS = [
    { label: 'Name', fieldName: 'Name', type: 'text' },
    { label: 'Type', fieldName: 'Type', type: 'text' },
    { label: 'Rating', fieldName: 'Rating', type: 'text' },
    { label: 'Annual Revenue', fieldName: 'AnnualRevenue', type: 'currency' }
];

export default class WireApex_Account extends LightningElement {

columns = COLUMNS;
accountValues;

//property or function
@wire(getTenAccounts)
accounts; 

@wire(getTenAccounts)
accountHandler({data,error}){
    if(data){
        this.accountValues = data;
    }
}

//As a FUNCTION
//accountHandler - data,error
//AS a PROPERTY
//accounts.data & accounts.error
//accounts = {
    //data : ....
    //error : ..... 
//}



}
/*import { LightningElement, wire } from 'lwc';
//import apex method
import getTenAccounts from "@salesforce/apex/AccountController_LWC.getTenAccounts";
const columns = [
    { label: 'Name', fieldName: 'Name', type: 'text' },
    { label: 'Type', fieldName: 'Type', type: 'text' },
    { label: 'Rating', fieldName: 'Rating', type: 'text' },
    { label: 'Annual Revenue', fieldName: 'AnnualRevenue', type: 'currency' }
];
export default class WireApex_Account extends LightningElement {
    columns = COLUMNS;
    //Wire apex method as property OR Wire apex method to a function
    @wire(getTenAccounts)
    accounts;

    //accountHandler - data, error
    //accounts data @ accounts error
} */