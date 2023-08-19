prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>45415934497209978153
,p_default_application_id=>250191
,p_default_id_offset=>49943868195930435456
,p_default_owner=>'WKSP_PASSMASTER'
);
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'My Account'
,p_alias=>'MY-ACCOUNT'
,p_step_title=>'My Account'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_imp.id(49936937190538197169)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'HAMZAERAOUI2000@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230816194803'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(434534407856542110)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(49937050198729197212)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(49936933414415197166)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(49937313668435197237)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(434535862484542112)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(49936970198569197183)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(434536630499542113)
,p_name=>'Master Records'
,p_template=>wwv_flow_imp.id(49936971552486197183)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P12_ID'', p_values => "ID") LINK,',
'    null ICON_CLASS,',
'    null LINK_ATTR,',
'    null ICON_COLOR_CLASS,',
'    case when coalesce(:P12_ID,''0'') = "ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    (substr("ACCOUNT_NAME", 1, 50)||( case when length("ACCOUNT_NAME") > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    (substr("EMAIL", 1, 50)||( case when length("EMAIL") > 50 then ''...'' else '''' end )) LIST_TEXT,',
'    null LIST_BADGE,',
'    case ',
'      when picture is not null then base64encode(PICTURE) ',
'      else null',
'    end IMAGE_BLOB,',
'    mime_type,',
'    filename',
'from "APP_PM_ACCOUNTS" x',
'where (:P12_SEARCH is null',
'        or upper(x."ACCOUNT_NAME") like ''%''||upper(:P12_SEARCH)||''%''',
'        or upper(x."EMAIL") like ''%''||upper(:P12_SEARCH)||''%''',
'    )',
'order by "ACCOUNT_NAME"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P12_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(212282139552439621)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434537400493542115)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434537784572542115)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434538166275542115)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434538600134542115)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434538940403542116)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434539362550542116)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434539710639542116)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434540168694542117)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434540518934542117)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434540948687542117)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(433339836306492860)
,p_query_column_id=>11
,p_column_alias=>'IMAGE_BLOB'
,p_column_display_sequence=>20
,p_column_heading=>'Image Blob'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(433339906742492861)
,p_query_column_id=>12
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>30
,p_column_heading=>'Mime Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(433340056218492862)
,p_query_column_id=>13
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>40
,p_column_heading=>'Filename'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(434541948416542269)
,p_name=>'Account Details'
,p_template=>wwv_flow_imp.id(49937037159337197207)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'APP_PM_ACCOUNTS'
,p_query_where=>'"ID" = :P12_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P12_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(49937080004315197223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434542511039542270)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "ID" is not null',
'and "ID" = :P12_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434542910750542270)
,p_query_column_id=>2
,p_column_alias=>'ACCOUNT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Account Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "ACCOUNT_NAME" is not null',
'and "ID" = :P12_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434543382838542270)
,p_query_column_id=>3
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "USERNAME" is not null',
'and "ID" = :P12_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434543791249542270)
,p_query_column_id=>4
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>4
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "EMAIL" is not null',
'and "ID" = :P12_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434544151943542270)
,p_query_column_id=>5
,p_column_alias=>'PHONE'
,p_column_display_sequence=>5
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "PHONE" is not null',
'and "ID" = :P12_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434544586202542271)
,p_query_column_id=>6
,p_column_alias=>'PASSWORD'
,p_column_display_sequence=>6
,p_column_heading=>'Password'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'        PASSWORD:=#PASSWORD#',
'{apply TOGGLE_PASSWORD/}',
'',
''))
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "PASSWORD" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434544993710542271)
,p_query_column_id=>7
,p_column_alias=>'PICTURE'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "PICTURE" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434545321615542271)
,p_query_column_id=>8
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "MIME_TYPE" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434545751600542271)
,p_query_column_id=>9
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "FILENAME" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434546136379542271)
,p_query_column_id=>10
,p_column_alias=>'ROW_VERSION'
,p_column_display_sequence=>56
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "ROW_VERSION" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434546567720542272)
,p_query_column_id=>11
,p_column_alias=>'CREATED'
,p_column_display_sequence=>66
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "CREATED" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434546956658542272)
,p_query_column_id=>12
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>76
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "CREATED_BY" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434547353416542272)
,p_query_column_id=>13
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>86
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "UPDATED" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434547776891542272)
,p_query_column_id=>14
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>96
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "UPDATED_BY" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2745234337877848)
,p_query_column_id=>15
,p_column_alias=>'URL'
,p_column_display_sequence=>106
,p_column_heading=>'Url'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<a href="#URL#" target="blanck">#URL#</a>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "URL" is not null',
'and "ID" = :P12_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(434557295001542278)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(49936970198569197183)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P12_ID'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(434557688015542279)
,p_name=>'Other Attributes'
,p_template=>wwv_flow_imp.id(49937037159337197207)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'APP_PM_OTHER_ATTRIBUTES'
,p_query_where=>'"ACCOUNT_ID" = :P12_ID'
,p_include_rowid_column=>true
,p_display_when_condition=>'P12_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(49937077061981197222)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434558529588542354)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:RP:P14_ROWID:#ROWID#'
,p_column_linktext=>'<span role="img" aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434558937464542354)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434559374755542355)
,p_query_column_id=>3
,p_column_alias=>'ACCOUNT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Account Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434559779654542355)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434560189172542355)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_VALUE'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434560573305542355)
,p_query_column_id=>6
,p_column_alias=>'ROW_VERSION'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434560930825542355)
,p_query_column_id=>7
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434561363527542356)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434561741498542356)
,p_query_column_id=>9
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(434562157233542356)
,p_query_column_id=>10
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(434581432905542377)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(49936970198569197183)
,p_plug_display_sequence=>70
,p_plug_source=>'No Record Selected'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P12_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(434566221939542359)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(434557688015542279)
,p_button_name=>'POP_APP_PM_OTHER_ATTRIBUTES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(49937311341918197236)
,p_button_image_alt=>'Add App Pm Other Attributes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:RP,14:P14_ACCOUNT_ID:&P12_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(434581923155542378)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(434541948416542269)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(49937312108330197236)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP,13:P13_ID:&P12_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(434535113338542112)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(434534407856542110)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(49937312108330197236)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.:RESET:&DEBUG.:RP,12::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(434535600847542112)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(434534407856542110)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(49937312108330197236)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP,13::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434536376983542113)
,p_name=>'P12_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(434535862484542112)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(49937109260333197235)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434556916915542278)
,p_name=>'P12_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(434541948416542269)
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(49937109553589197235)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(434582231117542378)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(434541948416542269)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(434582872944542378)
,p_event_id=>wwv_flow_imp.id(434582231117542378)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(434541948416542269)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(434583349964542378)
,p_event_id=>wwv_flow_imp.id(434582231117542378)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''App Pm Accounts row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(434557725481542279)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(434557688015542279)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(434566957671542360)
,p_event_id=>wwv_flow_imp.id(434557725481542279)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(434557688015542279)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(434567422713542360)
,p_event_id=>wwv_flow_imp.id(434557725481542279)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''App Pm Other Attributes row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(434582365148542378)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(434584123345542379)
,p_event_id=>wwv_flow_imp.id(434582365148542378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(434536630499542113)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(434584643480542379)
,p_event_id=>wwv_flow_imp.id(434582365148542378)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
