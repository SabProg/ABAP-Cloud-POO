CLASS zcl_lab_03_datatyp_p2009151064 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_03_datatyp_p2009151064 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

**********************************************************************
*** Conversión del tipo ***

    DATA: mv_char  TYPE c LENGTH 10 VALUE '12345',
          mv_num   TYPE i,
          mv_float TYPE f.

    mv_num = mv_char.
    out->write( | Conversión a entero: { mv_num }| ).

    mv_float = mv_char.
    out->write( | Conversión a flotante: { mv_float }| ).


**********************************************************************
*** Truncamiento y redondeo ***

    DATA: mv_trunc TYPE i,
          mv_round TYPE i.

    mv_float = '123.45'.

    " Truncamiento
    mv_trunc = mv_float.
    out->write( | Valor truncado: { mv_trunc }| ).

    " Redondeo sumando 0.5
    mv_round = mv_float + '0.5'.
    out->write( |   Valor redondeado: { mv_round }| ).

**********************************************************************
*** Tipos de declaraciones en línea ***

    DATA(lv_text) = 'ABAP'.

    out->write( | Variable declarada en línea: { lv_text }| ).

**********************************************************************
*** Conversiones de tipo forzado ***

    mv_num = mv_char.

    out->write( | Conversión forzada MV_CHAR -> MV_NUM: { mv_num }| ).

**********************************************************************
*** Cálculo de fecha y hora ***

    DATA: mv_date_1 TYPE d,
          mv_date_2 TYPE d,
          mv_days   TYPE i,
          mv_time   TYPE t.

    mv_date_1 = '20250107'.
    mv_date_2 = cl_abap_context_info=>get_system_date(  ).

    mv_days = mv_date_2 - mv_date_1.

    out->write( | Días entre fechas: { mv_days }| ).

    out->write( |  Fecha 1 (DDMMAAAA): { mv_date_1+6(2) }{ mv_date_1+4(2) }{ mv_date_1+0(4) }| ).


**********************************************************************
*** Campos Timestamp ***

    DATA: mv_timestamp TYPE utclong.

mv_timestamp = utclong_current(  ).
        " Obtener fecha y hora del sistema en formato timestamp
*    GET TIME STAMP FIELD mv_timestamp.

    out->write( |UTCLONG actual: { mv_timestamp }| ).

  ENDMETHOD.

ENDCLASS.
