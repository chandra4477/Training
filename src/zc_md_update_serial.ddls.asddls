@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'update serial number'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_MD_UPDATE_SERIAL   
provider contract transactional_query
  as projection on ZI_MD_UPDATE_SERIAL
//composition of target_data_source_name as _association_name
{
    key Materialdocument,
    key Documentyear,
    key Documentitem,
    key SerialNum,
    Material,
    @Semantics.quantity.unitOfMeasure: 'Entryunit'
    Quantityinentryunit,
    Entryunit
//    _association_name // Make association public
}
