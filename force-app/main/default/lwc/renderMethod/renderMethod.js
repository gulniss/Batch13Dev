import { LightningElement } from 'lwc';
import signinTempl from './signinTempl.html';
import signupTempl from './signupTempl.html';
import renderTemplate from './renderMethod.html';

export default class RenderMethod extends LightningElement {
    selectedButton;

    render(){
        return this.selectedButton === "Signin" ? signinTempl 
            : this.selectedButton === "Signup" ? signupTempl 
            : renderTemplate;
    }

    clickHandler(event) {
        this.selectedButton = event.target.label;
    }
}