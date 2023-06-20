import getProducts from '@salesforce/apex/EcommerceController.getProducts';
import { LightningElement } from 'lwc';

const COLUMNS = [
    { label: 'Title', fieldName: 'Title__c' },
    { label: 'Brand', fieldName: 'Brand__c' },
    { label: 'Category', fieldName: 'Category__c' },
    { label: 'Price', fieldName: 'Price__c', type: 'currency'}
    
];

export default class ImperativeApex_Ecommerce extends LightningElement {
    
    columns = COLUMNS;
    price;
    product;
    error;

    changeHandler(event){
        this.price=event.target.value;
        getProducts({amount: this.price})
        .then(result => {
            if (result.length === 0) {
                this.product = undefined;
            } else{
               console.log(result);
            this.product = result;
            } 
        })
        .catch(error => {
            this.error = error;
        })
    }
}