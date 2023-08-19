prompt --application/shared_components/files/scripts_core_min_js
begin
--   Manifest
--     APP STATIC FILES: 257738
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E20636F707950617373776F726428652C743D226D795061737322297B6E756C6C213D652626652E70726576656E7444656661756C7428293B76617220613D646F63756D656E742E676574456C656D656E74427949642874293B612E73';
wwv_flow_imp.g_varchar2_table(2) := '656C65637428292C612E73657453656C656374696F6E52616E676528302C3939393939292C6E6176696761746F722E636C6970626F6172642E77726974655465787428612E76616C7565297D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(656872519786637109)
,p_file_name=>'scripts/core.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
