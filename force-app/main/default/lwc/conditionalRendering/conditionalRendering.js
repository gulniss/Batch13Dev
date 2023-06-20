import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement {
    showContent = false;

    handleClick(){
        this.showContent = true;
    }
}