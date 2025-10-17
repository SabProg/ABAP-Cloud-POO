CLASS zcl_lab_43_navigation_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA log TYPE string.

    METHODS on_touch_screen
      FOR EVENT touch_screen OF zcl_lab_42_screen_sar
      IMPORTING pos_x pos_y.

ENDCLASS.


CLASS zcl_lab_43_navigation_sar IMPLEMENTATION.

  METHOD on_touch_screen.
    " Accedemos al objeto que levantó el evento mediante r_sender
*    log = |Evento TOUCH_SCREEN detectado en pantalla { sender->screen_type }: X = { pos_x }, Y = { pos_y } |.
  ENDMETHOD.

ENDCLASS.

