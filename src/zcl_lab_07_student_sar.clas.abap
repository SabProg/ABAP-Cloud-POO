CLASS zcl_lab_07_student_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA birth_date TYPE zdate READ-ONLY.

    METHODS set_birth_date
      IMPORTING
        iv_birth_date TYPE zdate.

    CLASS-METHODS main.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_07_student_sar IMPLEMENTATION.

  METHOD set_birth_date.
    birth_date = iv_birth_date.
  ENDMETHOD.

  METHOD main.
    DATA(lo_student) = NEW zcl_lab_07_student_sar( ).

    lo_student->set_birth_date( '19850202' ).

  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    out->write( |Fecha de nacimiento: { birth_date } | ).
  ENDMETHOD.

ENDCLASS.

