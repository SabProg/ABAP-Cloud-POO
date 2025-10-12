CLASS zcl_03_employee_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_employee_id TYPE string OPTIONAL.

    CLASS-METHODS class_constructor.

    METHODS get_employee_id RETURNING VALUE(rv_employee_id) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-DATA: company TYPE string.

    DATA: employee_id TYPE string.

ENDCLASS.



CLASS zcl_03_employee_sar IMPLEMENTATION.

  METHOD constructor.  "Se ejecuta cada vez q se instancia un objeto de la clase.
    me->employee_id = iv_employee_id.
  ENDMETHOD.

  METHOD get_employee_id.
    rv_employee_id = me->employee_id.
  ENDMETHOD.

  METHOD class_constructor. "Se ejecuta solo una vez para el contexto de la aplicación donde se ejecuta la clase.
    company = 'Sabry'.
  ENDMETHOD.

ENDCLASS.
