prompt --application/shared_components/files/scripts_core_js
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
wwv_flow_imp.g_varchar2_table(1) := '0D0A66756E6374696F6E20636F707950617373776F726428652C206964203D20226D795061737322297B0D0A20202020696628206520213D206E756C6C297B0D0A2020202020202020652E70726576656E7444656661756C7428293B0D0A202020207D0D';
wwv_flow_imp.g_varchar2_table(2) := '0A202020200D0A202020202F2F20476574207468652074657874206669656C640D0A2020202076617220636F707954657874203D20646F63756D656E742E676574456C656D656E7442794964286964293B0D0A202020200D0A202020202F2F2053656C65';
wwv_flow_imp.g_varchar2_table(3) := '6374207468652074657874206669656C640D0A20202020636F7079546578742E73656C65637428293B0D0A20202020636F7079546578742E73657453656C656374696F6E52616E676528302C203939393939293B202F2F20466F72206D6F62696C652064';
wwv_flow_imp.g_varchar2_table(4) := '6576696365730D0A0D0A202020202F2F20436F707920746865207465787420696E73696465207468652074657874206669656C640D0A202020206E6176696761746F722E636C6970626F6172642E77726974655465787428636F7079546578742E76616C';
wwv_flow_imp.g_varchar2_table(5) := '7565293B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(145578416809963471)
,p_file_name=>'scripts/core.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
