CLASS zcl_01_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_types IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lv_string TYPE string,
          lv_int    TYPE i VALUE 20251001,
          lv_date   TYPE d,
          lv_dec    TYPE p LENGTH 8 DECIMALS 2 VALUE '202501.10',
          lv_Char   TYPE c LENGTH 10 VALUE 'Logali'.

    lv_string = '20051001'.
    lv_date   = '20051001'.

    out->write( lv_string ).
    out->write( lv_int ).
    out->write( lv_date ).
    out->write( lv_dec ).
    out->write( lv_char ).

    DATA letra TYPE string.
    letra = '01abc'.
    out->write( letra ).
    out->write( letra ).
    out->write( letra ).

  ENDMETHOD.
ENDCLASS.
