@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Bookstore - order item projection'
@Metadata.allowExtensions: true
define view entity ZABAPD_C_ORDERITEM
  as projection on ZABAPD_R_ORDERITEM
{
  key ItemUuid,
      OrderUuid, BookUuid, BookTitle, Quantity, UnitPrice, LineAmount, CurrencyCode,
      CreatedBy, CreatedAt, LastChangedBy, LastChangedAt, LocalLastChangedAt,
      _Order : redirected to parent ZABAPD_C_ORDER
}
