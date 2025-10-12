CLASS zcl_lab_09_account_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_iban IMPORTING iban TYPE string.
    METHODS get_iban EXPORTING iban TYPE string.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: iban TYPE string.

ENDCLASS.



CLASS zcl_lab_09_account_sar IMPLEMENTATION.

  METHOD Set_iban.
    me->iban = iban.
  ENDMETHOD.

  METHOD Get_iban.
    iban = me->iban.
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_account) = NEW zcl_lab_09_account_sar(  ).

    lo_account->set_iban( iban = 'ES9121000418450200051332' ).

    DATA: lv_iban TYPE string.

    lo_account->get_iban( IMPORTING iban = lv_iban ).

    out->write( | IBAN: { lv_iban } | ).

  ENDMETHOD.

ENDCLASS.
