CLASS zcl_lab_05_flight_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    CONSTANTS:
      c_clase_a TYPE string VALUE 'Clase A',
      c_clase_b TYPE string VALUE 'Clase B',
      c_clase_c TYPE string VALUE 'Clase C',
      c_clase_d TYPE string VALUE 'Clase D'.


    METHODS check_flight
      IMPORTING
                iv_carrier_id    TYPE /dmo/carrier_id
                iv_conn_id       TYPE /dmo/connection_id
      RETURNING VALUE(rv_exists) TYPE abap_bool.

ENDCLASS.

CLASS zcl_lab_05_flight_sar IMPLEMENTATION.

  METHOD check_flight.
    SELECT SINGLE carrier_id
      FROM /dmo/flight
      WHERE carrier_id   = @iv_carrier_id
        AND connection_id = @iv_conn_id
      INTO @DATA(lv_carrier).

    rv_exists = COND abap_bool( WHEN sy-subrc = 0 THEN abap_true ELSE abap_false ).
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    DATA(lv_result) = me->check_flight(
                        iv_carrier_id = 'LH'
                        iv_conn_id    = '0400' ).

    IF lv_result = abap_true.
      out->write( |El vuelo existe.| ).
    ELSE.
      out->write( |El vuelo no existe.| ).
    ENDIF.

    out->write( |Constante 1: { zcl_lab_05_flight_sar=>c_clase_a }| ).
    out->write( |Constante 2: { zcl_lab_05_flight_sar=>c_clase_b }| ).
    out->write( |Constante 3: { zcl_lab_05_flight_sar=>c_clase_c }| ).
    out->write( |Constante 4: { zcl_lab_05_flight_sar=>c_clase_d }| ).

  ENDMETHOD.

ENDCLASS.

