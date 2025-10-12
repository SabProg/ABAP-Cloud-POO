CLASS zcl_lab_04_person_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

    METHODS: set_age IMPORTING iv_age TYPE i.
    METHODS: get_age EXPORTING ev_age TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: age TYPE i.

ENDCLASS.

CLASS zcl_lab_04_person_sar IMPLEMENTATION.

  METHOD set_age.
    age = iv_age.
  ENDMETHOD..

  METHOD get_age.
    ev_age = age.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.

    DATA: lo_person TYPE REF TO zcl_lab_04_person_sar,
          lv_age    TYPE i.

    CREATE OBJECT lo_person.

    lo_person->set_age( iv_age = 40 ).
    lo_person->get_age( IMPORTING ev_age = lv_age ).

    out->write( | Edad: { lv_age }| ).

  ENDMETHOD.

ENDCLASS.
