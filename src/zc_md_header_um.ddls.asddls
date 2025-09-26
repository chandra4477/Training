@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Hedaer'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_MD_HEADER_UM 
provider contract transactional_query
as projection on ZI_MD_HEADER_UM
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
    /* Associations */
    _item : redirected to composition child ZC_MD_ITEM_UM
}
