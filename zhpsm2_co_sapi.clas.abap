class ZHPSM2_CO_SAPI definition
  public
  inheriting from CL_PROXY_CLIENT
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !LOGICAL_PORT_NAME type PRX_LOGICAL_PORT_NAME optional
    raising
      CX_AI_SYSTEM_FAULT .
  methods CREATE_SAPI
    importing
      !INPUT type ZHPSM2_CREATE_SAPIREQUEST
    exporting
      !OUTPUT type ZHPSM2_CREATE_SAPIRESPONSE
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods RETRIEVE_SAPI
    importing
      !INPUT type ZHPSM2_RETRIEVE_SAPIREQUEST
    exporting
      !OUTPUT type ZHPSM2_RETRIEVE_SAPIRESPONSE
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods RETRIEVE_SAPIKEYS_LIST
    importing
      !INPUT type ZHPSM2_RETRIEVE_SAPIKEYS_LIST1
    exporting
      !OUTPUT type ZHPSM2_RETRIEVE_SAPIKEYS_LIST
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
  methods RETRIEVE_SAPILIST
    importing
      !INPUT type ZHPSM2_RETRIEVE_SAPILIST_REQUE
    exporting
      !OUTPUT type ZHPSM2_RETRIEVE_SAPILIST_RESPO
    raising
      CX_AI_SYSTEM_FAULT
      CX_AI_APPLICATION_FAULT .
protected section.
private section.
ENDCLASS.



CLASS ZHPSM2_CO_SAPI IMPLEMENTATION.


method CONSTRUCTOR.

  super->constructor(
    class_name          = 'ZHPSM2_CO_SAPI'
    logical_port_name   = logical_port_name
  ).

endmethod.


method CREATE_SAPI.

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
      method_name = 'CREATE_SAPI'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method RETRIEVE_SAPI.

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
      method_name = 'RETRIEVE_SAPI'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method RETRIEVE_SAPIKEYS_LIST.

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
      method_name = 'RETRIEVE_SAPIKEYS_LIST'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.


method RETRIEVE_SAPILIST.

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
      method_name = 'RETRIEVE_SAPILIST'
    changing
      parmbind_tab = lt_parmbind
  ).

endmethod.
ENDCLASS.
