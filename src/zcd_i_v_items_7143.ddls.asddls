@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista Items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCD_I_V_ITEMS_7143
  as select from zitems_7143 as ZITEMS_7143
  association to parent ZCD_I_R_ORDEN_7143 as _Orden on $projection.Id = _Orden.Id
{
  key id               as Id,
  key id_item          as Id_item,
      name             as Name,
      description      as Description,
      releasedate      as Releasedate,
      discontinueddate as Discontinueddate,
      price            as Price,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      width            as Width,
      depth            as Depth,
      quantity         as Quantity,
      unitofmeasure    as Unitofmeasure,
      _Orden
}
