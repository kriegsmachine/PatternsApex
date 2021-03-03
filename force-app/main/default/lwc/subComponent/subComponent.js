import { LightningElement, wire, api, track } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';

import { subscribe, MessageContext } from 'lightning/messageService';
import myChannel from "@salesforce/messageChannel/myMessageChannel__c";

export default class subComponent extends LightningElement {
    @wire(MessageContext) context;
    subscription = null;

    @api recordId;

    @wire(getRecord, { recordId: '$recordId'}) record;

    subscribeToMessageChannel() {
        this.subscription = subscribe(
            this.context,
            myChannel,
            (message) => this.handleMessage(message)
        );
    }

    handleMessage(message) {
        console.log(message);
        this.template.querySelector('lightning-input').value = message.myValue;
    }

    connectedCallback() {
        this.subscribeToMessageChannel();
    }

}