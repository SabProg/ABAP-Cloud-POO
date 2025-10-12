CLASS zcl_lab_08_work_rec_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS open_new_record
      IMPORTING
        iv_date       TYPE zdate
        iv_first_name TYPE string
        iv_last_name  TYPE string
        iv_surname    TYPE string OPTIONAL.

    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.
    CLASS-DATA date       TYPE zdate.
    CLASS-DATA first_name TYPE string.
    CLASS-DATA last_name  TYPE string.
    CLASS-DATA surname    TYPE string.

ENDCLASS.

CLASS zcl_lab_08_work_rec_sar IMPLEMENTATION.

  METHOD open_new_record.
    date       = iv_date.
    first_name = iv_first_name.
    last_name  = iv_last_name.

    IF iv_surname IS NOT INITIAL.
      surname = iv_surname.
    ELSE.
      surname = ''.
    ENDIF.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    me->open_new_record(
      iv_date       = '20251005'
      iv_first_name = 'Sabrina'
      iv_last_name  = 'Rodriguez'
      " iv_surname opcional, se puede omitir
    ).

    out->write( |Fecha: { zcl_lab_08_work_rec_sar=>date }| ).
    out->write( |Nombre: { zcl_lab_08_work_rec_sar=>first_name }| ).
    out->write( |Apellido: { zcl_lab_08_work_rec_sar=>last_name }| ).
    out->write( |Segundo apellido: { zcl_lab_08_work_rec_sar=>surname }| ).
  ENDMETHOD.

ENDCLASS.

