@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'New cunsumption view for sub'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_MD_ITEM_UM_SUB 
provider contract transactional_query
as projection on ZI_MD_ITEM_UM
{
    key MaterialDocument,
    key DocumentYear,
    key DocumentItem,
    Material,
    Plant,
    StorageLocation,
    GoodsMovementType,
    PurchaseOrder,
    PurchaseOrderItem,
    GoodsMovementRefDocType,
    GoodsMovementReasonCode,
    @Semantics.quantity.unitOfMeasure: 'Entryunit'
    QuantityInEntryUnit,
    EntryUnit,
    IsCompletelyDelivered,
    lastchangedat,
    totallastchangedat,
    /* Associations */
    _header,
    _sub
}
