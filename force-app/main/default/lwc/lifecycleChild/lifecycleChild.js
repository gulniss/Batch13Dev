import { LightningElement } from 'lwc';

export default class LifecycleChild extends LightningElement {
    constructor(){
        super();
        console.log("Child constructor called!");
    }
    connectedCallback(){
        console.log("Child connectedCallback has been called!");
        throw new Error("Error occured while connecting with Child Component.");
    }
    renderedCallback(){
        console.log("Child renderedCallback has been called!");
    }
    disconnectedCallback(){
        console.log("Child disconnectedCallback has been called!");
    }
}