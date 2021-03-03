public class MeterException extends Exception {
    String error = 'Invalid meter parameters. Check data input.';
    public String displayError() {
        return error;
    }
}