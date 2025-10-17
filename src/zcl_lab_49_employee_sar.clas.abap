CLASS zcl_lab_49_employee_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA log TYPE string.

    METHODS: on_payroll_paid
      FOR EVENT payroll_paid OF zcl_lab_48_administ_dep_sar
      IMPORTING ev_log.

ENDCLASS.



CLASS zcl_lab_49_employee_sar IMPLEMENTATION.

  METHOD on_payroll_paid.
    me->log = |Payroll paid for employee: { ev_log } |.
  ENDMETHOD.

ENDCLASS.
