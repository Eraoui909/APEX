prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'My Accounts'
,p_alias=>'MY-ACCOUNTS'
,p_step_title=>'My Accounts'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_file_urls=>'#APP_FILES#scripts/core#MIN#.js'
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
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This report page displays primary records in a selector on the side of the page. ',
'  Select a record to see the master record and any detail records defined.<br> ',
'  Click the edit icon ( <span class="fa fa-pencil-square-o" aria-hidden="true"></span> ) to edit the master record.',
'  For detail records, click the pencil, at the beginning of each row, to edit that record.</p>',
'<p>To limit the data displayed in the selector enter a search term into the search dialog.</p>',
'',
'<p>To add a new master record click <strong>Create</strong> at the top of the page.',
'  For detail records, click the plus icon ( + ) at the top of the detail region to add a detail record.</p>',
'',
'<p>Click <strong>Reset</strong> at the top of the page to reset the page back to the default settings, removing any search term previously defined.</p>'))
,p_page_component_map=>'03'
,p_last_updated_by=>'HAMZAERAOUI2000@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230813001831'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(49937443022921197311)
,p_name=>'&ACCOUNT_NAME.'
,p_template=>wwv_flow_imp.id(49937037159337197207)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ACCOUNT_NAME,',
'       USERNAME,',
'       EMAIL,',
'       PHONE,',
'       PASSWORD,',
'       dbms_lob.getlength(PICTURE) PICTURE,',
'       MIME_TYPE,',
'       FILENAME,',
'       ROW_VERSION,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY',
'  from APP_PM_ACCOUNTS',
' where "ID" = :P2_ID'))
,p_display_when_condition=>'P2_ID'
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
 p_id=>wwv_flow_imp.id(49937466814745197512)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "ID" is not null',
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937467285647197512)
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
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937467601751197512)
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
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937468053459197512)
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
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937468450549197513)
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
'and "ID" = :P2_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937468874322197513)
,p_query_column_id=>6
,p_column_alias=>'PASSWORD'
,p_column_display_sequence=>6
,p_column_heading=>'Password'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<input value="#PASSWORD#" id="myPass" disabled type="password">',
'<button onclick="copyPassword(event)">Copy</button>'))
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "PASSWORD" is not null',
'and "ID" = :P2_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937469207216197513)
,p_query_column_id=>7
,p_column_alias=>'PICTURE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "PICTURE" is not null',
'and "ID" = :P2_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6737178015250245)
,p_query_column_id=>8
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6737242090250246)
,p_query_column_id=>9
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937469681540197513)
,p_query_column_id=>10
,p_column_alias=>'ROW_VERSION'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "ROW_VERSION" is not null',
'and "ID" = :P2_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937470098489197513)
,p_query_column_id=>11
,p_column_alias=>'CREATED'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "CREATED" is not null',
'and "ID" = :P2_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937470484759197514)
,p_query_column_id=>12
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "CREATED_BY" is not null',
'and "ID" = :P2_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937470873816197514)
,p_query_column_id=>13
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "UPDATED" is not null',
'and "ID" = :P2_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937471278442197514)
,p_query_column_id=>14
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "APP_PM_ACCOUNTS"',
'where "UPDATED_BY" is not null',
'and "ID" = :P2_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49937458869386197387)
,p_plug_name=>'My Accounts'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>wwv_flow_imp.id(49937003401164197195)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49937460026679197388)
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
 p_id=>wwv_flow_imp.id(49937460883214197388)
,p_name=>'Master Records'
,p_display_sequence=>20
,p_component_template_options=>'#DEFAULT#:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P2_ID'', p_values => "ID") LINK,',
'    null ICON_CLASS,',
'    null LINK_ATTR,',
'    null ICON_COLOR_CLASS,',
'    case when coalesce(:P2_ID,''0'') = "ID"',
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
'where (:P2_SEARCH is null',
'        or upper(x."ACCOUNT_NAME") like ''%''||upper(:P2_SEARCH)||''%''',
'        or upper(x."EMAIL") like ''%''||upper(:P2_SEARCH)||''%''',
'    )',
'order by "ACCOUNT_NAME" DESC'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(212282139552439621)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940686322065050303)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940686486122050304)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>20
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940686502108050305)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>30
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940686687699050306)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>40
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940686767260050307)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>50
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940686863921050308)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>60
,p_column_heading=>'Icon Color Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940686923367050309)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>70
,p_column_heading=>'List Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940687076511050310)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>80
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940687160529050311)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>90
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49940687225104050312)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>100
,p_column_heading=>'List Badge'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195160247276330391)
,p_query_column_id=>11
,p_column_alias=>'IMAGE_BLOB'
,p_column_display_sequence=>110
,p_column_heading=>'Image Blob'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195160320416330392)
,p_query_column_id=>12
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>120
,p_column_heading=>'Mime Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195160503648330393)
,p_query_column_id=>13
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>130
,p_column_heading=>'Filename'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49937479500458197521)
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
,p_plug_display_when_condition=>'P2_ID'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(49937479902667197521)
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
,p_query_where=>'"ACCOUNT_ID" = :P2_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P2_ID'
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
 p_id=>wwv_flow_imp.id(49937480778787197523)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP:P4_ID:#ID#'
,p_column_linktext=>'<span role="img" aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937481163850197524)
,p_query_column_id=>2
,p_column_alias=>'ACCOUNT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Account'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937481566477197524)
,p_query_column_id=>3
,p_column_alias=>'ATTRIBUTE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937481903385197524)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937482318070197524)
,p_query_column_id=>5
,p_column_alias=>'ROW_VERSION'
,p_column_display_sequence=>5
,p_column_heading=>'Row Version'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937482747232197524)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937483103770197525)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937483590050197525)
,p_query_column_id=>8
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>8
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49937483947673197525)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49937502155047197601)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(49936970198569197183)
,p_plug_display_sequence=>70
,p_plug_source=>'No Record Selected'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P2_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49937487748445197528)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49937479902667197521)
,p_button_name=>'POP_APP_PM_OTHER_ATTRIBUTES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(49937311341918197236)
,p_button_image_alt=>'Add App Pm Other Attribute'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP,4:P4_ACCOUNT_ID:&P2_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49937502649943197602)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(49937443022921197311)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(49937312108330197236)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP,3:P3_ID:&P2_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49937459352114197387)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49937458869386197387)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(49937312108330197236)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.:RESET:&DEBUG.:RP,2::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49937459708569197388)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(49937458869386197387)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(49937312108330197236)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP,3::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49937460550288197388)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(49937460026679197388)
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
 p_id=>wwv_flow_imp.id(49937479248582197520)
,p_name=>'P2_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(49937443022921197311)
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(49937109553589197235)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49937502938498197602)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(49937443022921197311)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49937503598993197602)
,p_event_id=>wwv_flow_imp.id(49937502938498197602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49937443022921197311)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49937504059158197602)
,p_event_id=>wwv_flow_imp.id(49937502938498197602)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''App Pm Account row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49937480094865197522)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(49937479902667197521)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49937488450765197529)
,p_event_id=>wwv_flow_imp.id(49937480094865197522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49937479902667197521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49937488949752197529)
,p_event_id=>wwv_flow_imp.id(49937480094865197522)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''App Pm Other Attribute row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49937503058400197602)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49937504833042197603)
,p_event_id=>wwv_flow_imp.id(49937503058400197602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49937460883214197388)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49937505319670197603)
,p_event_id=>wwv_flow_imp.id(49937503058400197602)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
