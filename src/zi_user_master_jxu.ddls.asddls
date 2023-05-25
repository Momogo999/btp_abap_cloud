@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition view entity user master'
define root view entity zi_user_master_jxu
  as select from zuser_master_jxu
{
  key userid     as Userid,
      first_name as First_name,
      last_name  as Last_name,
      address    as Address,
      tele_num   as Tele_num
}
