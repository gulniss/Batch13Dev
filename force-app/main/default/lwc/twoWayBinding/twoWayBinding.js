import { LightningElement } from 'lwc';

export default class TwoWayBinding extends LightningElement {
    studentName;
    age;
    changeHandler(event){
        this.studentName = event.target.value;
    }
    ageHandler(event){
        this.age = event.target.value;
    }
    //Object
    batch = {
        batchName : 'Batch 13',
        batchSize : 70
    }

    batchNameHandler(event){
        this.batch.batchName = event.target.value;
    }
    batchSizeHandler(event){
        this.batch.batchSize = event.target.value;
    }
}