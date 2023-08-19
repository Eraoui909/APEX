prompt --application/shared_components/plugins/template_component/toggle_password
begin
--   Manifest
--     PLUGIN: TOGGLE_PASSWORD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(49687308438368046385)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'TOGGLE_PASSWORD'
,p_display_name=>'toggle-password'
,p_supported_component_types=>'PARTIAL'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','TOGGLE_PASSWORD'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#script/passwordToggle#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#style/togglaPassword#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ha-pass-template">',
'    <div class="ha-pass-container">',
'      <input value="#PASSWORD#" id="myPass" type="password" class="ha-pass-input">',
'      <span aria-hidden="true" class="fa fa-eye-slash ha-toggle-btn"></span>',
'    </div>',
'    <span aria-hidden="true" class="fa fa-copy ha-copy-btn"></span>',
'</div>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_version_identifier=>'1.0'
,p_files_version=>47
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(49687308743746046399)
,p_plugin_id=>wwv_flow_imp.id(49687308438368046385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'MY_FIRST_PLACEHOLDER'
,p_prompt=>'My First Placeholder'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(49687309140804046400)
,p_plugin_id=>wwv_flow_imp.id(49687308438368046385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'MY_SECOND_PLACEHOLDER'
,p_prompt=>'My Second Placeholder'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(49687309471853046400)
,p_plugin_id=>wwv_flow_imp.id(49687308438368046385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'PASSWORD'
,p_prompt=>'Password'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E68612D706173732D74656D706C6174657B0D0A20202020646973706C61793A20666C65783B0D0A20202020616C69676E2D6974656D733A2063656E7465723B0D0A2020202077696474683A206669742D636F6E74656E743B0D0A7D0D0A0D0A2E68612D';
wwv_flow_imp.g_varchar2_table(2) := '706173732D636F6E7461696E65727B0D0A20202020626F726465723A2031707820736F6C69643B0D0A2020202070616464696E673A203270783B0D0A2020202077696474683A206669742D636F6E74656E743B0D0A20202020626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(3) := '75733A203570783B0D0A20202020646973706C61793A20666C65783B0D0A20202020616C69676E2D6974656D733A2063656E7465723B0D0A7D0D0A0D0A2E68612D706173732D696E7075747B0D0A202020206D617267696E3A206175746F203570783B0D';
wwv_flow_imp.g_varchar2_table(4) := '0A20202020626F726465723A206E6F6E653B0D0A7D0D0A0D0A2E68612D746F67676C652D62746E7B0D0A20202020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E68612D636F70792D62746E7B0D0A20202020637572736F723A20706F696E';
wwv_flow_imp.g_varchar2_table(5) := '7465723B0D0A202020206D617267696E2D6C6566743A203570783B0D0A7D';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(2028484301538163909)
,p_plugin_id=>wwv_flow_imp.id(49687308438368046385)
,p_file_name=>'style/togglaPassword.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '646F63756D656E742E717565727953656C6563746F7228222E68612D746F67676C652D62746E22292E6164644576656E744C697374656E65722827636C69636B272C2028293D3E7B0D0A0D0A20202020636F6E737420696E707574203D20646F63756D65';
wwv_flow_imp.g_varchar2_table(2) := '6E742E717565727953656C6563746F7228222E68612D706173732D696E70757422293B0D0A2020202069662028696E7075742E6765744174747269627574652822747970652229203D3D3D202270617373776F72642229207B0D0A202020202020202069';
wwv_flow_imp.g_varchar2_table(3) := '6E7075742E736574417474726962757465282274797065222C20227465787422293B0D0A2020202020202020646F63756D656E742E717565727953656C6563746F7228222E68612D746F67676C652D62746E22292E736574417474726962757465282263';
wwv_flow_imp.g_varchar2_table(4) := '6C617373222C202266612066612D6579652068612D746F67676C652D62746E22293B0D0A202020207D20656C7365207B0D0A2020202020202020696E7075742E736574417474726962757465282274797065222C202270617373776F726422293B0D0A20';
wwv_flow_imp.g_varchar2_table(5) := '20202020202020646F63756D656E742E717565727953656C6563746F7228222E68612D746F67676C652D62746E22292E7365744174747269627574652822636C617373222C202266612066612D6579652D736C6173682068612D746F67676C652D62746E';
wwv_flow_imp.g_varchar2_table(6) := '22293B0D0A202020207D0D0A0D0A7D293B0D0A0D0A646F63756D656E742E717565727953656C6563746F7228222E68612D636F70792D62746E22292E6164644576656E744C697374656E65722822636C69636B222C20286529203D3E207B0D0A0D0A2020';
wwv_flow_imp.g_varchar2_table(7) := '2020636F707950617373776F72642865293B0D0A0D0A7D293B';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(2035651838607268605)
,p_plugin_id=>wwv_flow_imp.id(49687308438368046385)
,p_file_name=>'script/passwordToggle.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E68612D706173732D636F6E7461696E65722C2E68612D706173732D74656D706C6174657B646973706C61793A666C65783B616C69676E2D6974656D733A63656E7465723B77696474683A6669742D636F6E74656E747D2E68612D706173732D636F6E74';
wwv_flow_imp.g_varchar2_table(2) := '61696E65727B626F726465723A31707820736F6C69643B70616464696E673A3270783B626F726465722D7261646975733A3570787D2E68612D706173732D696E7075747B6D617267696E3A6175746F203570783B626F726465723A307D2E68612D636F70';
wwv_flow_imp.g_varchar2_table(3) := '792D62746E2C2E68612D746F67676C652D62746E7B637572736F723A706F696E7465727D2E68612D636F70792D62746E7B6D617267696E2D6C6566743A3570787D';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(2039435268019624043)
,p_plugin_id=>wwv_flow_imp.id(49687308438368046385)
,p_file_name=>'style/togglaPassword.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '646F63756D656E742E717565727953656C6563746F7228222E68612D746F67676C652D62746E22292E6164644576656E744C697374656E65722822636C69636B222C2828293D3E7B636F6E737420743D646F63756D656E742E717565727953656C656374';
wwv_flow_imp.g_varchar2_table(2) := '6F7228222E68612D706173732D696E70757422293B2270617373776F7264223D3D3D742E67657441747472696275746528227479706522293F28742E736574417474726962757465282274797065222C227465787422292C646F63756D656E742E717565';
wwv_flow_imp.g_varchar2_table(3) := '727953656C6563746F7228222E68612D746F67676C652D62746E22292E7365744174747269627574652822636C617373222C2266612066612D6579652068612D746F67676C652D62746E2229293A28742E73657441747472696275746528227479706522';
wwv_flow_imp.g_varchar2_table(4) := '2C2270617373776F726422292C646F63756D656E742E717565727953656C6563746F7228222E68612D746F67676C652D62746E22292E7365744174747269627574652822636C617373222C2266612066612D6579652D736C6173682068612D746F67676C';
wwv_flow_imp.g_varchar2_table(5) := '652D62746E2229297D29292C646F63756D656E742E717565727953656C6563746F7228222E68612D636F70792D62746E22292E6164644576656E744C697374656E65722822636C69636B222C28743D3E7B636F707950617373776F72642874297D29293B';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(2040685226412402182)
,p_plugin_id=>wwv_flow_imp.id(49687308438368046385)
,p_file_name=>'script/passwordToggle.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
