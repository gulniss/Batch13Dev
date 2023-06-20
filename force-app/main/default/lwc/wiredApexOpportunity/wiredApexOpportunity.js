import { LightningElement, wire } from 'lwc';

import getOppsWithParams from '@salesforce/apex/OpportunityController.getOppsWithParams';

const COLUMNS = [
    {label: 'Opportunity Name', fieldName: 'Name', type: 'text'},
    {label: 'Expected Revenue', fieldName: 'ExpectedRevenue', type: 'currency'},
    {label: 'Amount', fieldName: 'Amount', type: 'currency'},
    {label: 'Close Date', fieldName: 'CloseDate', type: 'date'},
    {label: 'Stage Name', fieldName: 'StageName', type: 'text'},
]
export default class WiredApexOpportunity extends LightningElement {

    columns = COLUMNS;
    selectedStageName = 'Closed Won';

    @wire(getOppsWithParams, {params: '$selectedStageName'})
    opps;
}