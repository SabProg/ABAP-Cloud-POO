CLASS zcl_lab_01_ejec1_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_01_ejec1_sar IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lo_company) = NEW zcl_04_company_sar( iv_quotation = 'Q1' ).
    DATA(lo_plant) = NEW zcl_05_plant_sar( iv_quotation = 'Q2' iv_products = 'P2' ).  " Tenemos 3 ref con 3 instancias q apuntan en la memoria a la instancia corresp con cada ref
    DATA(lo_storage_location) = NEW zcl_06_storage_sar( iv_quotation = 'Q3' iv_products = 'P3' ).

    lo_company->set_company_code( '1234' ).
    lo_company->set_currency( 'USD' ).

    lo_company->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code) ).
    lo_company->get_currency( IMPORTING ev_currency = DATA(lv_currency) ).

    out->write( | Company { lv_company_code } - { lv_currency } | ).

    lo_plant->set_company_code( '4567' ).
    lo_plant->set_currency( 'EUR' ).

    lo_plant->get_company_code( IMPORTING ev_company_code = lv_company_code ). " No podemos declarar dos veces las variables
    lo_plant->get_currency( IMPORTING ev_currency = lv_currency ).

    out->write( | Plant { lv_company_code } - { lv_currency } | ).

    lo_storage_location->set_company_code( '890' ).
    lo_storage_location->set_currency( 'ARG' ).

    lo_storage_location->get_company_code( IMPORTING ev_company_code = lv_company_code ). " No podemos declarar dos veces las variables
    lo_storage_location->get_currency( IMPORTING ev_currency = lv_currency ).

    out->write( | Storage Location { lv_company_code } - { lv_currency } | ).

  ENDMETHOD.

ENDCLASS.
