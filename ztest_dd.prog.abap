*&---------------------------------------------------------------------*
*& Report  ZTEST_DD
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZTEST_DD.


DATA: hpsm_incident_model type ZSMSTD_INCIDENT_MODEL_TYPE.
DATA: hpsm_incident_inst type ZSMSTD_INCIDENT_INSTANCE_TYPE4.
DATA: hpsm_str type ZHPSM2_STRING_TYPE.
DATA: hpsm_date_time type ZSMSTD_DATE_TIME_TYPE.
DATA: hpsm_inc_descr type ZSMSTD_INCIDENT_INSTANCE_TYPE3.
DATA: hpsm_str_tab type ZHPSM2_STRING_TYPE_TAB.

DATA: bs_xsd_date(10).
DATA: bs_dd(2), bs_mm(2), bs_yy(4).
DATA: bs1(100).

DATA: l_xml_string TYPE string,
      l_dat_time TYPE xsddatetime_z.


hpsm_incident_inst-CATEGORY-CONTENT = 'Обращение'.
hpsm_incident_inst-OPEN_TIME-CONTENT = sy-uzeit.

bs_yy = sy-datum.
bs_mm = sy-datum+4(2).
bs_dd = sy-datum+6(2).
*CONCATENATE bs_dd bs_mm bs_yy INTO bs_xsd_date SEPARATED BY '-'.
*CONCATENATE bs_xsd_date sy-uzeit into bs1.

*CALL FUNCTION 'CACS_DATE_GET_TIMESTAMP'
* EXPORTING
*   I_DATE                         = sy-datum
*   I_TIME                         = sy-uzeit
* IMPORTING
*   E_TIMESTAMP                    = l_dat_time.
*
*CALL TRANSFORMATION id
*  SOURCE root = l_dat_time
*  RESULT XML l_xml_string.

CONCATENATE sy-datum sy-uzeit INTO bs1.
l_dat_time = bs1.
hpsm_incident_inst-OPEN_TIME-CONTENT = l_dat_time.

hpsm_incident_inst-OPENED_BY-CONTENT = sy-uname.
hpsm_incident_inst-URGENCY-CONTENT = 'средний'.
CONCATENATE sy-sysid ':' sy-mandt ', ' sy-host INTO hpsm_incident_inst-AFFECTED_CI-CONTENT.
DO 5 TIMES.
  hpsm_str-CONTENT = 'Text line'.
  append hpsm_str to hpsm_str_tab.
ENDDO.
hpsm_incident_inst-DESCRIPTION-DESCRIPTION = hpsm_str_tab.

hpsm_incident_inst-CONTACT-CONTENT = sy-uname.
*CONTACT_LAST_NAME
*CONTACT_FIRST_NAME
*COMPANY
*TITLE
*AREA
*SUBAREA
*PROBLEM_TYPE
*USER_PRIORITY
*LOCATION
*IMPACT
*SERVICE
