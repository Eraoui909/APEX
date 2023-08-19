prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 257738
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(49937397034717197282)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(49936960030966197178)
,p_default_dialog_template=>wwv_flow_imp.id(49936954876127197176)
,p_error_template=>wwv_flow_imp.id(49936944846433197172)
,p_printer_friendly_template=>wwv_flow_imp.id(49936960030966197178)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(49936944846433197172)
,p_default_button_template=>wwv_flow_imp.id(49937312004423197236)
,p_default_region_template=>wwv_flow_imp.id(49937037159337197207)
,p_default_chart_template=>wwv_flow_imp.id(49937037159337197207)
,p_default_form_template=>wwv_flow_imp.id(49937037159337197207)
,p_default_reportr_template=>wwv_flow_imp.id(49937037159337197207)
,p_default_tabform_template=>wwv_flow_imp.id(49937037159337197207)
,p_default_wizard_template=>wwv_flow_imp.id(49937037159337197207)
,p_default_menur_template=>wwv_flow_imp.id(49937050198729197212)
,p_default_listr_template=>wwv_flow_imp.id(49937037159337197207)
,p_default_irr_template=>wwv_flow_imp.id(49937027006177197204)
,p_default_report_template=>wwv_flow_imp.id(49937077061981197222)
,p_default_label_template=>wwv_flow_imp.id(49937109553589197235)
,p_default_menu_template=>wwv_flow_imp.id(49937313668435197237)
,p_default_calendar_template=>wwv_flow_imp.id(49937313766193197237)
,p_default_list_template=>wwv_flow_imp.id(49937093447587197228)
,p_default_nav_list_template=>wwv_flow_imp.id(49937105210126197233)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(49937105210126197233)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(49937099833701197231)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(49936972945668197184)
,p_default_dialogr_template=>wwv_flow_imp.id(49936970198569197183)
,p_default_option_label=>wwv_flow_imp.id(49937109553589197235)
,p_default_required_label=>wwv_flow_imp.id(49937110880142197235)
,p_default_navbar_list_template=>wwv_flow_imp.id(49937099473346197231)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
