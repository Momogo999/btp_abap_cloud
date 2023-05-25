CLASS zcl_data_generate_jxu DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DATA_GENERATE_JXU IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA:lt_user_master TYPE STANDARD TABLE OF zuser_master_jxu.

    delete FROM zuser_master_jxu.

    lt_user_master = VALUE #( ( userid = '1' first_name = 'Aocheng' last_name = 'Yang' address = 'Somewhere' tele_num = '123456' )
                            ( userid = '2' first_name = 'Bocheng' last_name = 'Yang' address = 'Next door to Alice' tele_num = '987654'  )
                            ( userid = '3' first_name = 'Xing' last_name = 'Xu' address = 'Next door to John' tele_num = '771345'  )
                            ( userid = '4' first_name = 'Xiao' last_name = 'Meng' address = 'Next door to Vicky' tele_num = '782361'  )
                             ).

    INSERT zuser_master_jxu FROM TABLE @lt_user_master.
  ENDMETHOD.
ENDCLASS.
