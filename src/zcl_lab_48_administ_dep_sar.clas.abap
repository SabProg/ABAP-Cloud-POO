CLASS zcl_lab_48_administ_dep_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA id TYPE string.

    EVENTS payroll_paid EXPORTING VALUE(ev_log) TYPE string.

    METHODS:
      constructor IMPORTING iv_id TYPE string,
      notify_employee.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_48_administ_dep_sar IMPLEMENTATION.

  METHOD constructor.
    me->id = iv_id.
  ENDMETHOD.

  METHOD notify_employee.
    RAISE EVENT payroll_paid EXPORTING ev_log = me->id.
  ENDMETHOD.

ENDCLASS.
