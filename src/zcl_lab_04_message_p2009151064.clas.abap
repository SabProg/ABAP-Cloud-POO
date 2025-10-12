CLASS zcl_lab_04_message_p2009151064 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_04_message_p2009151064 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

**********************************************************************
*** Símbolos de texto ***

    out->write( TEXT-001 ).

**********************************************************************
*** Funciones de descripción ***

    DATA(lv_order_status) = |Purchase Completed Successfully|.
    DATA lv_char_number TYPE i.

    " Longitud STRLEN
    lv_char_number = strlen( lv_order_status ).
    out->write( |STRLEN: { lv_char_number }| ).

    " Longitud NUMOFCHAR
    lv_char_number = numofchar( lv_order_status ).
    out->write( |NUMOFCHAR: { lv_char_number }| ).

    " Contar caracteres 'A' (sin distinguir mayúsculas/minúsculas)
    lv_char_number = count( val = lv_order_status sub = `A` case = abap_false ).
    out->write( |Cantidad de A: { lv_char_number }| ).

    " Buscar patrón 'Exit'
    FIND 'Exit' IN lv_order_status MATCH OFFSET lv_char_number.
    out->write( |Posición de 'Exit': { lv_char_number }| ).


**********************************************************************
*** Funciones de procesamiento ***

    out->write( |Mayúsculas: { to_upper( lv_order_status ) }| ).
    out->write( |Minúsculas: { to_lower( lv_order_status ) }| ).
    out->write( |Capitalized: { to_mixed( lv_order_status ) }| ).

    " Desplazar 9 primeros caracteres al final
    DATA(lv_shifted) = substring( val = lv_order_status off = 9 ) &&
                       substring( val = lv_order_status len = 9 ).
    out->write( |Desplazado: { lv_shifted }| ).

    " Extraer palabra 'Completed'
    DATA(lv_completed) = substring_after( val = lv_order_status sub = `Purchase ` ).
    lv_completed = substring_before( val = lv_completed sub = ` Successfully` ).
    out->write( |Palabra extraída: { lv_completed }| ).

    " Revertir orden de caracteres
    out->write( |Reverso: { reverse( lv_order_status ) }| ).



**********************************************************************
*** Funciones de contenido ***

    DATA(lv_pattern) = `\d{3}-\d{3}-\d{4}`.
    DATA(lv_phone)   = `123-456-7890`.

    IF contains( val = lv_phone regex = lv_pattern ).
      out->write( |Teléfono válido: { lv_phone }| ).
    ELSE.
      out->write( |Teléfono inválido: { lv_phone }| ).
    ENDIF.

**********************************************************************
*** Funciones con expresiones regulares ***

    DATA(lv_email) = `correo@dominio.com`.
    lv_pattern = `\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b`.

    IF contains( val = lv_email regex = lv_pattern ).
      out->write( |Email válido: { lv_email }| ).
    ELSE.
      out->write( |Email inválido: { lv_email }| ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
