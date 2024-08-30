@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Root Orden'
define root view entity ZCD_I_R_ORDEN_7143
  as select from zorden_7143
  composition [0..*] of ZCD_I_V_ITEMS_7143 as _Items
  //composition of target_data_source_name as _association_name
{
  key id           as Id,
      email        as Email,
      firstname    as Firstname,
      lastname     as Lastname,
      country      as Country,
      createon     as Createon,
      deliverydate as Deliverydate,
      orderstatus  as Orderstatus,
      imageurl     as Imageurl,
      //_association_name // Make association public
      _Items
}
