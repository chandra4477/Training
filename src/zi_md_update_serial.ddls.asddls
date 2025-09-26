@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Updating serial number based on Event'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_MD_UPDATE_SERIAL as select from zserial_handle
//composition of target_data_source_name as _association_name
{
    key materialdocument as Materialdocument,
    key documentyear as Documentyear,
    key documentitem as Documentitem,
    key serial_num as SerialNum,
    material as Material,
    @Semantics.quantity.unitOfMeasure: 'Entryunit'
    quantityinentryunit as Quantityinentryunit,
    entryunit as Entryunit
//    _association_name // Make association public
}
