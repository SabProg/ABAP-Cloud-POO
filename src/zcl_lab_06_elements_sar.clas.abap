CLASS zcl_lab_06_elements_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF TY_eLEM_OBJECTS,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    CONSTANTS:
      c_clase_a TYPE string VALUE 'Clase A',
      c_clase_b TYPE string VALUE 'Clase B',
      c_clase_c TYPE string VALUE 'Clase C',
      c_clase_d TYPE string VALUE 'Clase D'.

    INTERFACES if_oo_adt_classrun.

    METHODS set_object IMPORTING Is_object TYPE ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: ms_object TYPE ty_elem_objects.


ENDCLASS.



CLASS zcl_lab_06_elements_sar IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(Ls_elem_objects) = VALUE ty_elem_objects(
    class = 'Clase'
    instance = 'Instancia'
    reference = 'Referencia' ).

    DATA(lo_elem) = NEW zcl_lab_06_elements_sar( ).
    lo_elem->set_object( is_object = ls_elem_objects ).

    " Mostrar valores
    out->write( |Clase: { lo_elem->ms_object-class }| ).
    out->write( |Instancia: { lo_elem->ms_object-instance }| ).
    out->write( |Referencia: { lo_elem->ms_object-reference }| ).

    out->write( |Constante 1: { zcl_lab_05_flight_sar=>c_clase_a }| ).
    out->write( |Constante 2: { zcl_lab_05_flight_sar=>c_clase_b }| ).
    out->write( |Constante 3: { zcl_lab_05_flight_sar=>c_clase_c }| ).
    out->write( |Constante 4: { zcl_lab_05_flight_sar=>c_clase_d }| ).

  ENDMETHOD.

  METHOD set_object.
    ms_object = is_object.
  ENDMETHOD.

ENDCLASS.
