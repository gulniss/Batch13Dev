// 28. QUERY SELECTORS
import { LightningElement } from 'lwc';

export default class QuerySelectors extends LightningElement {
    colors = ["Pink", "Purple", "Black", "Green", "Grey", "Red"];
    clickHandler(){
        //single element
        const elem = this.template.querySelector('h1');
        console.log(elem.innerText);
        elem.style.border = '3px solid purple';
        elem.style.backgroundColor = 'pink';

        //multiple elements
        const colorElems = this.template.querySelectorAll('.color');
        colorElems.forEach(item => {
            console.log(item.innerText);
            item.style.border = '2px solid pink';
            item.setAttribute("class", "slds-align_absolute-center");
        })

        //lwc:dom="manual"
        const childElem = this.template.querySelector('.child');
        childElem.innerHTML('<p>I have got added after the button click!</p>');
    }
}