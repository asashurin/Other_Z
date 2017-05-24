class ZHP_CO_ZWS_INCIDENT_CREATE definition
  public
  inheriting from CL_PROXY_CLIENT
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !LOGICAL_PORT_NAME type PRX_LOGICAL_PORT_NAME optional
    raising
      CX_AI_SYSTEM_FAULT .
  methods ZINCIDENT_CREATE
    importing
      !INPUT type ZHP_ZINCIDENT_CREATE
    exporting
      !OUTPUT type ZHP_ZINCIDENT_CREATE_RESPONSE
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
protected section.
private section.
ENDCLASS.



CLASS ZHP_CO_ZWS_INCIDENT_CREATE IMPLEMENTATION.


method CONSTRUCTOR.

  super->constructor(
    class_name          = 'ZHP_CO_ZWS_INCIDENT_CREATE'
    logical_port_name   = logical_port_name
  ).

endmethod.


method ZINCIDENT_CREATE.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'ZINCIDENT_CREATE'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.
ENDCLASS.
