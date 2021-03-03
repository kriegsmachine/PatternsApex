public with sharing class MeterInspector {

    IMeterService meterService;
    Set<String> meterType = new Set<String>{'Gas', 'Water'};

    public MeterInspector (String type, String location) {
        if (meterType.contains(type) && type == 'Water' && location.trim().length() > 0) {
            meterService = new WaterMeter(location);
        } else if (meterType.contains(type) && type == 'Gas'){
            meterService = new GasMeter();
        } else {
            throw new MeterException('Invalid input parameters');
        }
    }

    public String getMeterData() {
        return meterService.getMeterData();
    }
}