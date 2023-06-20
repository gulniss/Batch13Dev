import { LightningElement } from 'lwc';

export default class ChildComponent_EventBubbling extends LightningElement {
    infoChild;
    
    childClickHandler(event){
        this.infoChild = event.detail;
    }
}

