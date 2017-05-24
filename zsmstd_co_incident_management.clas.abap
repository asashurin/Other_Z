class ZSMSTD_CO_INCIDENT_MANAGEMENT definition
  public
  inheriting from CL_PROXY_CLIENT
  create public .

public section.

  methods CLOSE_INCIDENT
    importing
      !INPUT type ZSMSTD_CLOSE_INCIDENT_REQUEST
    exporting
      !OUTPUT type ZSMSTD_CLOSE_INCIDENT_RESPONSE
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods CONSTRUCTOR
    importing
      !LOGICAL_PORT_NAME type PRX_LOGICAL_PORT_NAME optional
    raising
      CX_AI_SYSTEM_FAULT .
  methods CREATE_INCIDENT
    importing
      !INPUT type ZSMSTD_CREATE_INCIDENT_REQUEST
    exporting
      !OUTPUT type ZSMSTD_CREATE_INCIDENT_RESPONS
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods REOPEN_INCIDENT
    importing
      !INPUT type ZSMSTD_REOPEN_INCIDENT_REQUEST
    exporting
      !OUTPUT type ZSMSTD_REOPEN_INCIDENT_RESPONS
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods RESOLVE_INCIDENT
    importing
      !INPUT type ZSMSTD_RESOLVE_INCIDENT_REQUES
    exporting
      !OUTPUT type ZSMSTD_RESOLVE_INCIDENT_RESPON
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods RETRIEVE_INCIDENT
    importing
      !INPUT type ZSMSTD_RETRIEVE_INCIDENT_REQUE
    exporting
      !OUTPUT type ZSMSTD_RETRIEVE_INCIDENT_RESPO
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods RETRIEVE_INCIDENT_KEYS_LIST
    importing
      !INPUT type ZSMSTD_RETRIEVE_INCIDENT_KEYS1
    exporting
      !OUTPUT type ZSMSTD_RETRIEVE_INCIDENT_KEYS
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods RETRIEVE_INCIDENT_LIST
    importing
      !INPUT type ZSMSTD_RETRIEVE_INCIDENT_LIST1
    exporting
      !OUTPUT type ZSMSTD_RETRIEVE_INCIDENT_LIST
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods UPDATE_INCIDENT
    importing
      !INPUT type ZSMSTD_UPDATE_INCIDENT_REQUEST
    exporting
      !OUTPUT type ZSMSTD_UPDATE_INCIDENT_RESPONS
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
protected section.
private section.
ENDCLASS.



CLASS ZSMSTD_CO_INCIDENT_MANAGEMENT IMPLEMENTATION.


method CLOSE_INCIDENT.

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
      method_name = 'CLOSE_INCIDENT'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method CONSTRUCTOR.

  super->constructor(
    class_name          = 'ZSMSTD_CO_INCIDENT_MANAGEMENT'
    logical_port_name   = logical_port_name
  ).

endmethod.


method CREATE_INCIDENT.

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
      method_name = 'CREATE_INCIDENT'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method REOPEN_INCIDENT.

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
      method_name = 'REOPEN_INCIDENT'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method RESOLVE_INCIDENT.

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
      method_name = 'RESOLVE_INCIDENT'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method RETRIEVE_INCIDENT.

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
      method_name = 'RETRIEVE_INCIDENT'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method RETRIEVE_INCIDENT_KEYS_LIST.

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
      method_name = 'RETRIEVE_INCIDENT_KEYS_LIST'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method RETRIEVE_INCIDENT_LIST.

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
      method_name = 'RETRIEVE_INCIDENT_LIST'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method UPDATE_INCIDENT.

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
      method_name = 'UPDATE_INCIDENT'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.
ENDCLASS.
