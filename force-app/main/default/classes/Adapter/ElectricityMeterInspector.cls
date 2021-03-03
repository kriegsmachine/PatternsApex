public with sharing class ElectricityMeterInspector implements IElectricityMeterService {
    //ElectricityMeterInspector already has meterReading value
    String meterReading = 'The value';
    IElectricityMeterService adapter;

    public ElectricityMeterInspector() {
        //build inspector to read electric meter
    }

    public ElectricityMeterInspector(IElectricityMeterService adapter) {
        this.adapter = adapter;
    }

    public String getMeterData() {
        return meterReading;
    }

    public String getOtherMeterData() {
        return adapter.getMeterData();
    }
}