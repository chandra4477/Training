@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_MD_ITEM_UM 
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
    @Semantics.quantity.unitOfMeasure: 'EntryUnit'
    QuantityInEntryUnit,
    EntryUnit,
    IsCompletelyDelivered,
    lastchangedat,
    totallastchangedat,
    /* Associations */
    _header : redirected to parent ZC_MD_HEADER_UM
 }   
