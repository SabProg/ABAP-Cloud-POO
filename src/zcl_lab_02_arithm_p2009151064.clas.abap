CLASS zcl_lab_02_arithm_p2009151064 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_02_arithm_p2009151064 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lv_base_rate            TYPE i VALUE 20,
          lv_corp_area_rate       TYPE i VALUE 10,
          lv_medical_service_rate TYPE i VALUE 15,
          lv_total_rate           TYPE i.

**********************************************************************
*** Suma ***

    " Suma con +
    lv_total_rate = lv_base_rate + lv_corp_area_rate + lv_medical_service_rate.

    " Agregar 5 con ADD
    ADD 5 TO lv_total_rate.

    out->write( |Suma con + : { lv_base_rate + lv_corp_area_rate + lv_medical_service_rate }| ).
    out->write( |Resultado final con ADD 5: { lv_total_rate }| ).

**********************************************************************
*** Resta ***

    DATA: lv_maintenance_rate TYPE i VALUE 30,
          lv_margin_rate      TYPE i VALUE 10,
          lv_base_ra_te       TYPE i.

    " Resta con -
    lv_base_ra_te = lv_maintenance_rate - lv_margin_rate.

    " Restar 4 con SUBTRACT
    SUBTRACT 4 FROM lv_base_ra_te.

    out->write( |Resta con - : { lv_maintenance_rate - lv_margin_rate }| ).
    out->write( |Resultado final con SUBTRACT 4: { lv_base_rate }| ).

**********************************************************************
*** Multiplicación ***

    DATA: lv_package_weight TYPE i VALUE 2,
          lv_cost_per_kg    TYPE i VALUE 3,
          lv_multi_rate     TYPE i.

    " Multiplicación con *
    lv_multi_rate = lv_package_weight * lv_cost_per_kg.

    " Multiplicar por 2 con MULTIPLY
    MULTIPLY lv_multi_rate BY 2.

    out->write( |Multiplicación con * : { lv_package_weight * lv_cost_per_kg }| ).
    out->write( |Resultado final con MULTIPLY 2: { lv_multi_rate }| ).

**********************************************************************
*** DIvisión / DIVIDE ***

    DATA: lv_total_weight TYPE i VALUE 38,
          lv_num_packages TYPE i VALUE 4,
          lv_applied_rate TYPE p LENGTH 8 DECIMALS 2.

    " División con /
    lv_applied_rate = lv_total_weight / lv_num_packages.

    " Dividir por 3 con DIVIDE
    DIVIDE lv_applied_rate BY 3.

    out->write( |División con / : { lv_total_weight / lv_num_packages }| ).
    out->write( |Resultado final con DIVIDE 3: { lv_applied_rate }| ).

**********************************************************************
*** División sin resto / DIV ***

    DATA: lv_total_cost         TYPE i VALUE 17,
          lv_discount_threshold TYPE i VALUE 4,
          lv_result             TYPE p LENGTH 4 DECIMALS 2.

    " División entera (sin resto)
    lv_result = lv_total_cost DIV lv_discount_threshold.

    out->write( |Resultado de la división sin resto: { lv_result }| ).

**********************************************************************
*** Resto de división / MOD ***

    DATA: lv_total_cos_t         TYPE i VALUE 19,
          lv_discount_threshol_d TYPE i VALUE 4,
          lv_remainder           TYPE p LENGTH 4 DECIMALS 2.

    " Resto (residuo) de la división
    lv_remainder = lv_total_cos_t MOD lv_discount_threshol_d.

    out->write( |Resultado del resto (MOD): { lv_remainder }| ).

**********************************************************************
*** Exponenciación ***

    DATA: lv_weight TYPE i,
          lv_expo   TYPE i.

    lv_weight = 5.

    lv_expo = lv_weight ** 2.

    out->write( | Peso: { lv_expo }| ).

**********************************************************************
*** Raíz cuadrada ***

    DATA: lv_square_root TYPE i.

    lv_square_root = sqrt( 25 ).

    out->write( |Raíz cuadrada: { lv_square_root }| ).

  ENDMETHOD.

ENDCLASS.
