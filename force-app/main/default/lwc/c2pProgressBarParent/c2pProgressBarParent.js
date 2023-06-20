import { LightningElement } from 'lwc';

export default class C2pProgressBarParent extends LightningElement {
    progressValue = 0;

    parentHandler(event){
        this.progressValue = event.detail;
    }
}

/*
UC 2 : Create a progress bar and a inputbox. The input for the progress bar must be passed from the Child to Parent.

Step 1 : Create Progress bar in Parent component

Step 2 : Create Input in Child Component
2.1 onchange - customevent "pass" (detail - pass the value), dispatch

Step 3 : In the Parent, <.... onpass={parentHandler}>
3.1 parentHadler, event.detail => progressbar value
*/