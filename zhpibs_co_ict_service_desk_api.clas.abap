class ZHPIBS_CO_ICT_SERVICE_DESK_API definition
  public
  inheriting from CL_PROXY_CLIENT
  create public .

public section.

  methods ACCEPT_INCIDENT_PROCESSING
    importing
      !INPUT type ZHPIBS_ACCEPT_INCIDENT_PROCES1
    exporting
      !OUTPUT type ZHPIBS_ACCEPT_INCIDENT_PROCESS
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods ADD_INFO
    importing
      !INPUT type ZHPIBS_ADD_INFO
    exporting
      !OUTPUT type ZHPIBS_ADD_INFO_RESPONSE
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods CLOSE_INCIDENT
    importing
      !INPUT type ZHPIBS_CLOSE_INCIDENT
    exporting
      !OUTPUT type ZHPIBS_CLOSE_INCIDENT_RESPONSE
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods CONSTRUCTOR
    importing
      !LOGICAL_PORT_NAME type PRX_LOGICAL_PORT_NAME optional
    raising
      CX_AI_SYSTEM_FAULT .
  methods GET_POSSIBLE_VALUES
    importing
      !INPUT type ZHPIBS_GET_POSSIBLE_VALUES
    exporting
      !OUTPUT type ZHPIBS_GET_POSSIBLE_VALUES_RES
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods LIST_UNCLOSED_INCIDENTS
    importing
      !INPUT type ZHPIBS_LIST_UNCLOSED_INCIDENT1
    exporting
      !OUTPUT type ZHPIBS_LIST_UNCLOSED_INCIDENTS
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods PROCESS_INCIDENT
    importing
      !INPUT type ZHPIBS_PROCESS_INCIDENT
    exporting
      !OUTPUT type ZHPIBS_PROCESS_INCIDENT_RESPON
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods READ_COMPLETE_INCIDENT
    importing
      !INPUT type ZHPIBS_READ_COMPLETE_INCIDENT1
    exporting
      !OUTPUT type ZHPIBS_READ_COMPLETE_INCIDENT
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods REJECT_INCIDENT_SOLUTION
    importing
      !INPUT type ZHPIBS_REJECT_INCIDENT_SOLUTI1
    exporting
      !OUTPUT type ZHPIBS_REJECT_INCIDENT_SOLUTIO
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods REPLICATE_INCIDENT
    importing
      !INPUT type ZHPIBS_REPLICATE_INCIDENT
    exporting
      !OUTPUT type ZHPIBS_REPLICATE_INCIDENT_RESP
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods REQUEST_GUID
    importing
      !INPUT type ZHPIBS_REQUEST_GUID
    exporting
      !OUTPUT type ZHPIBS_REQUEST_GUID_RESPONSE
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods REQUEST_SYSTEM_GUID
    importing
      !INPUT type ZHPIBS_REQUEST_SYSTEM_GUID
    exporting
      !OUTPUT type ZHPIBS_REQUEST_SYSTEM_GUID_RES
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods VERIFY_INCIDENT_SOLUTION
    importing
      !INPUT type ZHPIBS_VERIFY_INCIDENT_SOLUTI1
    exporting
      !OUTPUT type ZHPIBS_VERIFY_INCIDENT_SOLUTIO
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
protected section.
private section.
ENDCLASS.



CLASS ZHPIBS_CO_ICT_SERVICE_DESK_API IMPLEMENTATION.


method ACCEPT_INCIDENT_PROCESSING.

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
      method_name = 'ACCEPT_INCIDENT_PROCESSING'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method ADD_INFO.

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
      method_name = 'ADD_INFO'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


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
    class_name          = 'ZHPIBS_CO_ICT_SERVICE_DESK_API'
    logical_port_name   = logical_port_name
  ).

endmethod.


method GET_POSSIBLE_VALUES.

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
      method_name = 'GET_POSSIBLE_VALUES'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method LIST_UNCLOSED_INCIDENTS.

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
      method_name = 'LIST_UNCLOSED_INCIDENTS'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method PROCESS_INCIDENT.

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
      method_name = 'PROCESS_INCIDENT'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method READ_COMPLETE_INCIDENT.

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
      method_name = 'READ_COMPLETE_INCIDENT'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method REJECT_INCIDENT_SOLUTION.

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
      method_name = 'REJECT_INCIDENT_SOLUTION'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method REPLICATE_INCIDENT.

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
      method_name = 'REPLICATE_INCIDENT'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method REQUEST_GUID.

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
      method_name = 'REQUEST_GUID'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method REQUEST_SYSTEM_GUID.

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
      method_name = 'REQUEST_SYSTEM_GUID'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method VERIFY_INCIDENT_SOLUTION.

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
      method_name = 'VERIFY_INCIDENT_SOLUTION'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.
ENDCLASS.
