trigger NewAssetTrigger on New_Asset__e (after insert) {
    NewAssetTriggerHandler.afterInsert(Trigger.new);
}