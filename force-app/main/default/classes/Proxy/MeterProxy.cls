public with sharing class MeterProxy implements IMeterService {

    String meterType;
    String location;

    public MeterProxy(String type, String location) {
        this.meterType = type;
        this.location = location;
    }

    public String getMeterData() {
        if (validateUser()) {
            return new MeterInspector(meterType, location).getMeterData();
        } else {
            throw new MeterException('Unauthorized access. In order to use MeterInspector ' +
                                        'the user should have System Administrator profile');
        }
    }

    Boolean validateUser() {
        List <Profile> profiles = [SELECT Id FROM Profile WHERE Name = 'System Administrator'];
        return UserInfo.getProfileId().equals(profiles.get(0).Id);
    }
}