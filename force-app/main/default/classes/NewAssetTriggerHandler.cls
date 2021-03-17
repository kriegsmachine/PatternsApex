public with sharing class NewAssetTriggerHandler {
    public static void afterInsert(List<New_Asset__e> events) {

        List<AssetWarranty> assetWarranties = new List<AssetWarranty>();

        for(New_Asset__e event : events) {
            assetWarranties.add(
                    new AssetWarranty(
                            AssetId = event.Asset_ID__c,
                            StartDate = event.Asset_Install_Date__c)
            );
        }
        insert assetWarranties;
    }
}