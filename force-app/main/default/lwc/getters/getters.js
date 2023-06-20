import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
     //Arrays - similar to Apex List
     students = ['ferzan', 'tuba', 'sema', 'mahri'];

     //getters
     get firstStudent(){
        return this.students[0];
     }

     get lastStudent(){
        return this.students[3];
     }
}