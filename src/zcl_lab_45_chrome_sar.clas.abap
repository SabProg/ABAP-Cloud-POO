CLASS zcl_lab_45_chrome_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA log TYPE string.

    METHODS on_close_window
        FOR EVENT close_window OF zif_lab_05_browser_sar.

ENDCLASS.



CLASS zcl_lab_45_chrome_sar IMPLEMENTATION.

  METHOD on_close_window.
    log = 'Evento CLOSE_WINDOW detectado en Chrome'.
  ENDMETHOD.

ENDCLASS.
