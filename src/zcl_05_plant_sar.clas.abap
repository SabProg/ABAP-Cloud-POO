CLASS zcl_05_plant_sar DEFINITION INHERITING FROM zcl_04_company_sar
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_quotation TYPE string
                                  iv_products  TYPE string.

    METHODS set_company_code REDEFINITION.

    DATA products TYPE string READ-ONLY.

  PROTECTED SECTION.
    DATA company_atr TYPE string.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_05_PLANT_SAR IMPLEMENTATION.


  METHOD constructor.

    super->constructor( iv_quotation = iv_quotation ).
    me->products = iv_products.



  ENDMETHOD.


  METHOD set_company_code.
  super->set_company_code( iv_company_code = iv_company_code ).
    me->company_code = 'AbCd'.
  ENDMETHOD.
ENDCLASS.
