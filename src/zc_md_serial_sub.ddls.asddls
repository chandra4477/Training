@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Sub'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_MD_SERIAL_SUB 
provider contract transactional_query
as projection on ZI_MD_SERIAL_SUB
{
    key Materialdocument,
    key Documentyear,
    key Documentitem,
    key SerialNum,
    Material,
    @Semantics.quantity.unitOfMeasure: 'Entryunit'
    Quantityinentryunit,
    Entryunit,
    /* Associations */
    _item
}
