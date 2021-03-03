public with sharing class TelegramNotificationFactory implements INotificationFactory {

    public ITextMessageFactory notifyViaText() {
        return new TelegramTextMessage();
    }

    public IVoiceMessageFactory notifyViaVoice() {
        return new TelegramVoiceMessage();
    }
}