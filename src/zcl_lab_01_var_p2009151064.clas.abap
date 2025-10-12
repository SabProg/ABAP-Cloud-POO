CLASS zcl_lab_01_var_p2009151064 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_01_var_p2009151064 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

**********************************************************************
*** 1. Tipo de datos elementales ***

    DATA: mv_purchase_date TYPE d,
          mv_purchase_time TYPE t.

    mv_purchase_date = cl_abap_context_info=>get_system_date( ).

    mv_purchase_time = cl_abap_context_info=>get_system_time( ).

    out->write( | Fecha actual: { mv_purchase_date } Hora actual: { mv_purchase_time } | ).

    DATA: mv_price TYPE f,
          mv_tax   TYPE i.

    mv_price = '10.5'.
    mv_tax = 16.

    out->write( | Price: { mv_price } Tax: { mv_tax } | ).

    DATA: mv_increase  TYPE decfloat16,
          mv_discounts TYPE decfloat34.

    mv_increase = '20.5'.
    mv_discounts = '10.5'.

    out->write( | Increase: { mv_increase } Discounts: { mv_discounts } | ).

    DATA: mv_type     TYPE c LENGTH 10,
          mv_shipping TYPE p LENGTH 8 DECIMALS 2.

    mv_type = 'PC'.
    mv_shipping = '40.36'.

    out->write( | Type: { mv_type } Shipping: { mv_shipping }| ).

    DATA: mv_id_code TYPE n LENGTH 4,
          mv_qr_code TYPE x LENGTH 5.

    mv_id_code = '1110'.
    mv_qr_code = 'F5CF'.

    out->write( | ID Code: { mv_id_code } QR Code: { mv_qr_code }| ).

**********************************************************************
*** 2. Tipo de datos complejos ***

    TYPES: BEGIN OF mty_customer,
             id       TYPE i,
             customer TYPE c LENGTH 15,
             age      TYPE i,
           END OF mty_customer.

    DATA: ls_customer TYPE mty_customer.

    ls_customer = VALUE #( id = 31365264 customer = 'Sabrina' age = 40 ).

    out->write( | Id: { ls_customer-id } Customer: { ls_customer-customer } Age: { ls_customer-age } | ).

**********************************************************************
*** 3. Tipo de datos de referencia ***

    DATA: ms_employees TYPE REF TO /dmo/employee_hr.

    CREATE DATA ms_employees.

    ms_employees->employee   = '1001'.
    ms_employees->first_name    = 'Ana'.
    ms_employees->last_name     = 'Gomez'.

    out->write( | Employee ID: { ms_employees->employee } Name: { ms_employees->first_name } { ms_employees->last_name } | ).

**********************************************************************
*** 4. Objetos de datos ***

    DATA mv_product   TYPE string  VALUE 'Laptop'.
    DATA mv_bar_code  TYPE xstring VALUE '121211212111'.

    out->write( | Product: { mv_product } | ).
    out->write( | Bar Code: { mv_bar_code } | ).

**********************************************************************
*** 5. Constantes ***

    CONSTANTS: mc_purchase_date TYPE d           VALUE '20251002',  "ejemplo de fecha actual
               mc_purchase_time TYPE t           VALUE '002131',    "ejemplo de hora actual
               mc_price         TYPE f           VALUE '10.5',
               mc_tax           TYPE i           VALUE 16,
               mc_increase      TYPE decfloat16  VALUE '20.5',
               mc_discounts     TYPE decfloat34  VALUE '10.5',
               mc_type          TYPE c LENGTH 10 VALUE 'PC',
               mc_shipping      TYPE p LENGTH 8 DECIMALS 2 VALUE '40.36',
               mc_id_code       TYPE n LENGTH 4  VALUE '1110',
               mc_qr_code       TYPE x LENGTH 5  VALUE 'F5CF',
               mc_customer_id   TYPE i           VALUE 31365264,
               mc_customer_name TYPE c LENGTH 15 VALUE 'Sabrina',
               mc_customer_age  TYPE i           VALUE 40,
               mc_emp_id        TYPE c LENGTH 10 VALUE '1001',
               mc_emp_fname     TYPE c LENGTH 15 VALUE 'Ana',
               mc_emp_lname     TYPE c LENGTH 15 VALUE 'Gomez',
               mc_product       TYPE string      VALUE 'Laptop',
               mc_bar_code      TYPE xstring     VALUE '121211212111'.

    mv_purchase_date = mc_purchase_date.
    mv_purchase_time = mc_purchase_time.
    mv_price         = mc_price.
    mv_tax           = mc_tax.
    mv_increase      = mc_increase.
    mv_discounts     = mc_discounts.
    mv_type          = mc_type.
    mv_shipping      = mc_shipping.
    mv_id_code       = mc_id_code.
    mv_qr_code       = mc_qr_code.

    ls_customer-id       = mc_customer_id.
    ls_customer-customer = mc_customer_name.
    ls_customer-age      = mc_customer_age.

    ms_employees->employee   = mc_emp_id.
    ms_employees->first_name = mc_emp_fname.
    ms_employees->last_name  = mc_emp_lname.

    mv_product   = mc_product.
    mv_bar_code  = mc_bar_code.

**********************************************************************
*** 6. Declaraciones en línea ***

    DATA(lv_product) = mv_product.
    DATA(lv_bar_Code) = mv_bar_code.

    out->write( | Product: { lv_product } | ).
    out->write( |Bar code: { lv_bar_code } | ).

  ENDMETHOD.

ENDCLASS.
