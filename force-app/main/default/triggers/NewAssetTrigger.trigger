trigger NewAssetTrigger on New_Asset__e (after insert) {

    List<AssetWarranty> assetWarranties = new List<AssetWarranty>();
    
    if(Trigger.isAfter && Trigger.isInsert) {
        for(New_Asset__e event : Trigger.new) {
            assetWarranties.add(
                                new AssetWarranty(
                                AssetId = event.Asset_ID__c,
                                StartDate = event.Asset_Install_Date__c)
            );
        }
    }
    insert assetWarranties;
}
