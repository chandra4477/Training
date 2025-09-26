@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root interface view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.query.implementedBy: 'ABAP:ZCL_HEADER_READ'
define root view entity ZI_MD_HEADER_UM as select from zi_md_header
composition[1..*] of ZI_MD_ITEM_UM as _item
{
    key MaterialDocument,
    key DocumentYear,
    ReferenceDocument,
    Supplier,
    GoodsMovementCode,
    ReceivingPlant,
    MaterialDocumentHeaderText,
    lastchangedat,
    totallastchangedat,
    _item // Make association public
}
