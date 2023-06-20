import { LightningElement } from 'lwc';

export default class HW1 extends LightningElement {
    firstName = 'Gulnar';
    lastName = 'Issa';

    weekDays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

    get today(){
        return this.weekDays[1];
    }

    favs = {
        color : 'pink',
        food : 'spinach',
        book : 'Jane Eyer',
        place : 'Monterey, CA' 
    };
}