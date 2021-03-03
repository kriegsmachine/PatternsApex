public with sharing class WaterMeter implements IMeterService {

    String meterLocation;
    String meterReading = '';
    List<Integer> cellValues = new List<Integer>{0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    Integer meterCellsNumber; // Number of cells dependent on location. Used as key in 'locationsMap' map.
    final Map<Integer, String> locationsMap = new Map<Integer, String>{3 => 'Kitchen', 4 => 'Bathroom'};

    public WaterMeter (String location) {
        if (locationsMap.values().contains(location)) {
            this.meterLocation = location;
        } else {
            throw new MeterException('Water meter location doesn\'t exist. Check location input parameter.');
        }
    }

    public String getMeterData() {
        setMeterCellsNumber();
        generateCellValues();
        return meterReading;
    }

    String generateCellValues() {
        Integer currentCellValue;
        for (Integer i = 0; i < meterCellsNumber; i++) {
            currentCellValue = cellValues.get((Math.random() * cellValues.size()).intValue());
            meterReading = meterReading + String.valueOf(currentCellValue);
        }
        return meterReading;
    }

    void setMeterCellsNumber() {
        for (Integer i : locationsMap.keySet()) {
            if (locationsMap.get(i) == meterLocation) {
                meterCellsNumber = i;
            }
        }
    }
}