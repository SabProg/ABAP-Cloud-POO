CLASS zcl_03_reftype DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_03_reftype IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lvr_int    TYPE REF TO i,               " Ref a variables
          lvr_String TYPE REF TO string.

    DATA: lvr_ddic_Tab TYPE REF TO /dmo/airport.  " Tabla de base de dato del standard de sap

*    DATA: lvr_int LIKE lvr_int. " Casi obsoleto pero sirve para hacer ref de otra ref.

**********************************************************************

    TYPES: ltyr_int TYPE REF TO i.
    DATA: lvr_int3 TYPE ltyr_int.

    data: lt_itab type table of REF TO /dmo/airport.
**********************************************************************
data lo_ref TYPE REF TO zcl_02_complexty.

      endmethod.

ENDCLASS.
