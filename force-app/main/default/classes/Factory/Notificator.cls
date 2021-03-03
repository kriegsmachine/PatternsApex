public with sharing class Notificator {
    INotificationFactory notificationFactory;
    ITextMessageFactory textMessage;
    IVoiceMessageFactory voiceMessage;

    public Notificator(INotificationFactory notificationFactory) {
        this.notificationFactory = notificationFactory;
    }

    public void sendTextNotification() {
        textMessage = notificationFactory.notifyViaText();
    }

    public void sendVoiceNotification() {
        voiceMessage = notificationFactory.notifyViaVoice();
    }
}
/*
    Somewhere in the client code

    String messengerType;
    INotificationFactory factory;

    if(messengerType == 'Telegram') {
    INotificationFactory this.factory = new TelegramNotificationFactory();
    } else if (messengerType == 'Viber') {
    INotificationFactory this.factory = new ViberNotificationFactory();
    } else {
    //throw exception
    }

    Notificator notificator = new Notificator(factory);
 */