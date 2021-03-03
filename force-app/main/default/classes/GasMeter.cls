public with sharing class GasMeter implements IMeterService {

    String meterReading = '';
    List<Integer> cellValues = new List<Integer>{0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

    public GasMeter() {
        meterReading = generateCellValues();
    }

    public String getMeterData() {
        System.debug(meterReading);
        return meterReading;
    }

    String generateCellValues() {
        Integer currentCellValue;
        for (Integer i = 0; i < 4; i++) {
            currentCellValue = cellValues.get((Math.random() * cellValues.size()).intValue());
            meterReading = meterReading + String.valueOf(currentCellValue);
        }
        return meterReading;
    }
}