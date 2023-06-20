import { LightningElement, track } from 'lwc';

export default class Track extends LightningElement {
    //Object
   @track batch = {
        batchName : 'Batch 13',
        batchSize : 70
    }

    batchNameHandler(event){
        console.log('Inside the method');
        this.batch.batchName = event.target.value;
    }
    batchSizeHandler(event){
        this.batch.batchSize = event.target.value;
    }

    @track module = ['LWC']

    get firstModule(){
        return this.module[0];
    }
    moduleHandler(event){
        this.module[0] = event.target.value;
    }
}