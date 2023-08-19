prompt --application/shared_components/files/icons_app_icon_32_png
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000026D494441545847ED555B6B1341183D9BBDE4D61A6F49B46969A12A3EB4952A36D28AB6116943F1529FBCFC07FF85FFC13F50F4';
wwv_flow_imp.g_varchar2_table(2) := '4568A9D0AAC44BA58A3550518B0F5A0CF66263B42524DDCDEECE66652635360193681282B0030BB3333BDF77E67CE73BCBDDBC75DB4403076701B018B018F82F19304D132274B4070E320789AD7C05E144701CF7D78EF24F3EA0A9190C067B10F07B59C2';
wwv_flow_imp.g_varchar2_table(3) := 'D57802CFE6DF4194ECF501406FAC6CA55802FAD0F9D50BE72089224BA8E93AEE4E45E0743743D754F6D079258C54C480A1CA181B398BF5C4069662CB1004016782BD05B79D7DB50042083A3BDAE0F7EEC5C4CC2C78BBB32C236501D0DB047B8EA0B3BDB5';
wwv_flow_imp.g_varchar2_table(4) := '6CB09D1F7CFCBC8CE8E22708A254F25C59004A3A89EB97462008B67C2025A362FECD7BAC7FDB646B077C7BD0D7DB05A7FDB70608C9627CF2015C4DBBAA036018042E814338D40F511058B0C8DC6B7C4F2AB0F13C7BCF1A06BC1E27420327F39A9879F212';
wwv_flow_imp.g_varchar2_table(5) := '3231C1F3B9337F1A6519A007A908DD1287D1D0008B333EF11092D35D1093A832AE5D3CCFD6A622CFA1E85CED44980360C368A89F25B833F90882C355004093D3B83136CCD6EE47E620EB666D00B012881CC2433B4B10C5462A036C1B8F41087C1E1742A7';
wwv_flow_imp.g_varchar2_table(6) := '7325D009C1F4E317B5290113E1E56108DBF5A60998081716B196F801339B458B6F1F4E9DE886A31E2224BA86BEEEC38D6B43A6724DC195F020D6E2092CC556B0DBD38CE35D470B34107DFB01C9D4160E75B4A2C5BF1FF7A69F82976A6044BFDA4C91D3CC';
wwv_flow_imp.g_varchar2_table(7) := '8625BBA3A415D3FF04B3625753BE4DAB6EC3E20034C950F018BB291D75FF191503A06D69E70CB405FC6CEBCB6A1C9AC957D476C5B12A32A2925656E5A605C062C062A0E10CFC044D5142701DF4737D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(49937420969299197294)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
