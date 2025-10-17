CLASS zcl_lab_42_screen_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    " Evento de instancia que exporta posición horizontal y vertical
    EVENTS touch_screen
      EXPORTING
        VALUE(pos_x) TYPE i
        VALUE(pos_y) TYPE i.

    " Método que levanta el evento
    METHODS element_selected
      IMPORTING
        VALUE(pos_x) TYPE i
        VALUE(pos_y) TYPE i.

    " Nuevo atributo de tipo STRING
    DATA screen_type TYPE string.

    " Constructor
    METHODS constructor
      IMPORTING
        VALUE(i_screen_type) TYPE string.

ENDCLASS.


CLASS zcl_lab_42_screen_sar IMPLEMENTATION.

  METHOD constructor.
    screen_type = i_screen_type.
  ENDMETHOD.

  METHOD element_selected.
    " Levanta el evento TOUCH_SCREEN pasando los valores recibidos
    RAISE EVENT touch_screen
      EXPORTING
        pos_x = pos_x
        pos_y = pos_y.
  ENDMETHOD.

ENDCLASS.

