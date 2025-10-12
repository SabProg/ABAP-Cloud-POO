CLASS zcl_00_abapclass_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_00_abapclass_sar IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'This is my first class' ).
  ENDMETHOD.
ENDCLASS.
