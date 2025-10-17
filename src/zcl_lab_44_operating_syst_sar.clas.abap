CLASS zcl_lab_44_operating_syst_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_05_browser_sar.
    DATA log TYPE string.

    " Método que simula movimiento del mouse y levanta el evento CLOSE_WINDOW
    METHODS mouse_movement.

ENDCLASS.



CLASS zcl_lab_44_operating_syst_sar IMPLEMENTATION.
  METHOD mouse_movement.
    RAISE EVENT zif_lab_05_browser_sar~close_window.
  ENDMETHOD.

ENDCLASS.
