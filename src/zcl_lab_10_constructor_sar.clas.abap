CLASS zcl_lab_10_constructor_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA log TYPE string.
    METHODS constructor.
    CLASS-METHODS class_constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_sar IMPLEMENTATION.
  METHOD class_constructor.
    log = |Ejecución del CLASS-CONSTRUCTOR|. " Se debe ejecutar primero
  ENDMETHOD.

  METHOD constructor.
    log = log && | -> Ejecución del CONSTRUCTOR de instancia|. " Se ejecuta por cada instancia
  ENDMETHOD.

ENDCLASS.
