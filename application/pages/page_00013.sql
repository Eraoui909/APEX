prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_name=>'App Pm Accounts'
,p_alias=>'APP-PM-ACCOUNTS'
,p_page_mode=>'MODAL'
,p_step_title=>'App Pm Accounts'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(49936934260367197167)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'HAMZAERAOUI2000@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230816203138'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(434517145073542099)
,p_plug_name=>'App Pm Accounts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(49936970198569197183)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APP_PM_ACCOUNTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(434528117490542107)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(49936972945668197184)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(827886290382151739)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_button_name=>'GENERATE_PASSWORD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(49937312004423197236)
,p_button_image_alt=>'Generate Password'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_PREV_PAGE:13'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(434528585180542107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(434528117490542107)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(49937312004423197236)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(434529985173542108)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(434528117490542107)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(49937312004423197236)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(434530315141542108)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(434528117490542107)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(49937312004423197236)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(434530713148542108)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(434528117490542107)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(49937312004423197236)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(434532357500542109)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:RP:P12_ID:&P13_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(434530713148542108)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(434532789756542109)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:RP,12::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(434529985173542108)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2745163585877847)
,p_name=>'P13_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_prompt=>'URL'
,p_source=>'URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>500
,p_field_template=>wwv_flow_imp.id(49937110880142197235)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434517577144542100)
,p_name=>'P13_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(49937109553589197235)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434518001706542100)
,p_name=>'P13_ACCOUNT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_prompt=>'Account Name'
,p_source=>'ACCOUNT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(49937110880142197235)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434518359258542101)
,p_name=>'P13_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(49937109553589197235)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434518794625542101)
,p_name=>'P13_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(49937109553589197235)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434519163506542101)
,p_name=>'P13_PHONE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(49937109553589197235)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434519574368542102)
,p_name=>'P13_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_prompt=>'Password'
,p_pre_element_text=>'test'
,p_post_element_text=>'test2'
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>250
,p_field_template=>wwv_flow_imp.id(49937110880142197235)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434519931512542102)
,p_name=>'P13_PICTURE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_prompt=>'Picture'
,p_source=>'PICTURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(49937109553589197235)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434520327151542102)
,p_name=>'P13_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_source=>'MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434520792600542102)
,p_name=>'P13_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434521156364542103)
,p_name=>'P13_ROW_VERSION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_source=>'ROW_VERSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434521536168542103)
,p_name=>'P13_CREATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434522393667542103)
,p_name=>'P13_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434522713656542104)
,p_name=>'P13_UPDATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(434523574273542104)
,p_name=>'P13_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_item_source_plug_id=>wwv_flow_imp.id(434517145073542099)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(434522046538542103)
,p_validation_name=>'P13_CREATED must be timestamp'
,p_validation_sequence=>100
,p_validation=>'P13_CREATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(434521536168542103)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(434523254043542104)
,p_validation_name=>'P13_UPDATED must be timestamp'
,p_validation_sequence=>120
,p_validation=>'P13_UPDATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(434522713656542104)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(434528699941542107)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(434528585180542107)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(434529433723542107)
,p_event_id=>wwv_flow_imp.id(434528699941542107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(434531602571542109)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(434517145073542099)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form App Pm Accounts'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50378399798501977565
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(434531998216542109)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(434530315141542108)
,p_internal_uid=>50378400194146977565
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(434531201231542108)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(434517145073542099)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form App Pm Accounts'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50378399397161977564
);
wwv_flow_imp.component_end;
end;
/