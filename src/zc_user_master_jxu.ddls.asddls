@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view entity user master'
@Metadata.allowExtensions: true
define root view entity zc_user_master_jxu
  provider contract transactional_query
  as projection on zi_user_master_jxu
{
  key Userid,
      First_name,
      Last_name,
      Address,
      Tele_num
}
