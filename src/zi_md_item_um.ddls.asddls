@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.query.implementedBy: 'ABAP:ZCL_ITEM_READ'
define view entity ZI_MD_ITEM_UM as select from zi_md_item as item
association to parent ZI_MD_HEADER_UM as _header
    on $projection.MaterialDocument = _header.MaterialDocument
    and $projection.DocumentYear = _header.DocumentYear    
association[1..*] to ZI_MD_SERIAL_SUB as _sub
    on $projection.MaterialDocument = _sub.Materialdocument
    and $projection.DocumentYear = _sub.Documentyear
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
    _header, // Make association public
    _sub
}
