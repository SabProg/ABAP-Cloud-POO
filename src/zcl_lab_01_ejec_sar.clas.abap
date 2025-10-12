CLASS zcl_lab_01_ejec_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_01_ejec_sar IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lo_obj) = NEW zcl_lab_10_constructor_sar( ).

    out->write( zcl_lab_10_constructor_sar=>log ).

*    DATA(lo_employee1) = NEW zcl_03_employee_sar( iv_employee_id = '01' ).
*
*    out->write( lo_employee1->get_employee_id(  ) ).
*
*    DATA(lo_employee2) = NEW zcl_03_employee_sar( iv_employee_id = '02' ).
*
*    out->write( lo_employee2->get_employee_id(  ) ).



**    DATA lo_contract TYPE REF TO zcl_02_contract_sar.
**    CREATE OBJECT lo_contract.
**    lo_contract = NEW #(  ).
*
*    DATA(lo_contract) = NEW zcl_02_contract_sar(  ).
*    DATA(lo_contract2) = NEW zcl_02_contract_sar(  ).
*
*    DATA lv_process TYPE string.
*
*    DATA: lt_address TYPE zcl_02_contract_sar=>tty_address,
*          ls_address TYPE zcl_02_contract_sar=>tty_address.
*
*    IF lo_contract IS BOUND.
*
*      lo_contract->set_client(
*        EXPORTING
*          iv_client   = 'Sabrina'
**          iv_location = space
*        IMPORTING
*          ev_status   = DATA(lv_status)
*        CHANGING
*          cv_process  = lv_process ).
*
*      lo_contract->get_client( IMPORTING ev_client = DATA(lv_client) ).
*
*      lo_contract->region = 'Eur'.
*
*      DATA(lv_client_name) = lo_contract->get_client_name( iv_client_id = '01' ).
*      IF NOT lo_contract->get_client_name( iv_client_id = '01' ) IS INITIAL.
*        out->write( lo_contract->get_client_name( iv_client_id = '01' ) ).
*      ENDIF.
*
*    ENDIF.
*    zcl_02_contract_sar=>set_cntr_type( iv_cntr_type = 'Construction' ).
*    zcl_02_contract_sar=>get_cntr_type( IMPORTING ev_cntr_type = DATA(lv_cntr_type) ).
*    zcl_02_contract_sar=>currency = zcl_02_contract_sar=>cs_currency-usd.
*
*
*    out->write( lo_contract->currency ).
*    out->write( lo_contract2->currency ).
*    out->write( | { lv_client } - { lv_process } -  { lv_status } - { lo_contract->region } | ).
*    out->write( lo_contract->region ).
*    out->write( lv_cntr_type ).
*    out->write( ls_address ).
*    out->write( zcl_02_contract_sar=>company ).

  ENDMETHOD.

ENDCLASS.
