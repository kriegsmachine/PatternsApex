import { LightningElement, wire, api } from 'lwc';

import { publish, MessageContext } from 'lightning/messageService';
import myChannel from "@salesforce/messageChannel/myMessageChannel__c";

export default class pubComponent extends LightningElement {
    @wire(MessageContext) context;
    @api recordId;

    pub() {
        let message = {myValue: 'Pub Sub'};
        console.log(message);
        publish(this.context, myChannel, message)
    }
}