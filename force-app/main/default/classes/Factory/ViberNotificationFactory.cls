public with sharing class ViberNotificationFactory implements INotificationFactory {

    public ITextMessageFactory notifyViaText() {
        return new ViberTextMessage();
    }

    public IVoiceMessageFactory notifyViaVoice() {
        return new ViberVoiceMessage();
    }
}