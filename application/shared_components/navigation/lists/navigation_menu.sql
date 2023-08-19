prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(49936933980693197167)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(49937432787862197304)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(49937442688607197310)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'My Accounts'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-unlock-alt'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(434533932213542110)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'My Account'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-briefcase'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(650121058505574516)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Password Generator'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp.component_end;
end;
/
