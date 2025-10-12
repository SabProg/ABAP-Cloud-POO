CLASS zcl_05_oper_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_05_oper_sar IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*    DATA: lv_num_a TYPE i VALUE 10,
*          lv_num_b TYPE i VALUE 15,
*          lv_total TYPE p LENGTH 6 DECIMALS 2.
*
*    lv_total = lv_num_a + lv_num_b.
*
*    out->write( | Numer a { lv_num_a } Number b { lv_num_b }  Total: { lv_total } | ).
*
*    ADD 5 TO lv_total.
*
*    out->write( | Total_1: { lv_total } | ).
*
*    lv_total += 5.
*
*    out->write( | Total_2: { lv_total } | ).
*
*
***********************************************************************
**** Resta ***
*
*    lv_total = lv_num_a - lv_num_b.
*
*    out->write( | Numer a { lv_num_a } Number b { lv_num_b }  Total: { lv_total } | ).
*
*    SUBTRACT 5 FROM lv_num_a.
*
*    out->write( | Resta de a: { lv_num_a } | ).
*
*
***********************************************************************
*    DATA: lv_num_1 TYPE i VALUE 1,
*          lv_num_2 TYPE i VALUE 1,
*          lv_num_3 TYPE i.
*
*    lv_num_3 = lv_num_1 * lv_num_2.
*
*    MULTIPLY lv_num_3 BY 2.
*
*    lv_num_3 = lv_num_3 * lv_num_3.
*
*    out->write( lv_num_3 ).

**********************************************************************

    DATA(lv_mult) = 8 * 2.

    out->write( lv_mult ).

    DATA(lv_div) = 8 / 3.

    out->write( lv_div ).

    DATA(lv_text) = 'ABAP Cloud Text'.

    out->write( lv_text ).


  ENDMETHOD.

ENDCLASS.
