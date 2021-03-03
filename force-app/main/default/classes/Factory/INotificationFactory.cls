public interface INotificationFactory {
    ITextMessageFactory notifyViaText();
    IVoiceMessageFactory notifyViaVoice();
}