public with sharing class ElectricityInspectorAdapter implements IElectricityMeterService {
    IMeterService meter;

    public ElectricityInspectorAdapter(IMeterService meter) {
        this.meter = meter;
    }

    public String getMeterData() {
        return meter.getMeterData();
    }
}