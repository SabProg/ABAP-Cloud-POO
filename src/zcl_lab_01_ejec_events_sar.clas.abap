CLASS zcl_lab_01_ejec_events_sar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_01_ejec_events_sar IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA:
      lo_admin1 TYPE REF TO zcl_lab_48_administ_dep_sar,
      lo_admin2 TYPE REF TO zcl_lab_48_administ_dep_sar,
      lo_admin3 TYPE REF TO zcl_lab_48_administ_dep_sar,
      lo_emp    TYPE REF TO zcl_lab_49_employee_sar.

    " Crear manejador del evento
    CREATE OBJECT lo_emp.

    " Registrar manejador para TODAS las instancias
    SET HANDLER lo_emp->on_payroll_paid FOR ALL INSTANCES.

    " Crear instancias administrativas
    CREATE OBJECT lo_admin1 EXPORTING iv_id = 'E001'.
    CREATE OBJECT lo_admin2 EXPORTING iv_id = 'E002'.
    CREATE OBJECT lo_admin3 EXPORTING iv_id = 'E003'.

    " Levantar eventos
    lo_admin1->notify_employee( ).
    out->write( lo_emp->log ).

    lo_admin2->notify_employee( ).
    out->write( lo_emp->log ).

    lo_admin3->notify_employee( ).
    out->write( lo_emp->log ).




*    DATA lo_os    TYPE REF TO zcl_lab_44_operating_syst_sar.
*    DATA lo_chrome TYPE REF TO zcl_lab_45_chrome_sar.
*
*    " Crear instancias
*    lo_os     = NEW zcl_lab_44_operating_syst_sar( ).
*    lo_chrome = NEW zcl_lab_45_chrome_sar( ).
*
*    " Registrar manejador del evento
*    SET HANDLER lo_chrome->on_close_window FOR lo_os.
*
*    " Simular levantamiento del evento
*    lo_os->mouse_movement( ).
*
*    " Mostrar log actualizado
*    out->write( | { lo_chrome->log } | ) .

*    " Declarar referencias a las clases
*    DATA lo_screen TYPE REF TO zcl_lab_42_screen_sar.
*    DATA lo_nav    TYPE REF TO zcl_lab_43_navigation_sar.
*
*    " Crear instancias
*    lo_screen = NEW zcl_lab_42_screen_sar( ).
*    lo_nav    = NEW zcl_lab_43_navigation_sar( ).
*
*    " Registrar el manejador del evento
*    SET HANDLER lo_nav->on_touch_screen FOR lo_screen.
*
*    " Simular el levantamiento del evento
*    lo_screen->element_selected( pos_x = 150 pos_y = 275 ).
*
*    " Mostrar el log actualizado de la clase receptora
*    out->write( | Log de navegación:' { lo_nav->log } | ) .

  ENDMETHOD.

ENDCLASS.
