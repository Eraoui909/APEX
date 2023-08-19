prompt --application/shared_components/user_interface/lovs/app_pm_accounts_account_name
begin
--   Manifest
--     APP_PM_ACCOUNTS.ACCOUNT_NAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(49937490534000197591)
,p_lov_name=>'APP_PM_ACCOUNTS.ACCOUNT_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'APP_PM_ACCOUNTS'
,p_return_column_name=>'ID'
,p_display_column_name=>'ACCOUNT_NAME'
,p_default_sort_column_name=>'ACCOUNT_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
