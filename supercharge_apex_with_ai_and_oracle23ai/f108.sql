prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7680737372568341
,p_default_application_id=>108
,p_default_id_offset=>0
,p_default_owner=>'DEMO'
);
end;
/
 
prompt APPLICATION 108 - Viscosity - APEX + 23ai Demo
--
-- Application Export:
--   Application:     108
--   Name:            Viscosity - APEX + 23ai Demo
--   Date and Time:   17:03 Wednesday June 18, 2025
--   Exported By:     EESPINOZA
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      5
--       Items:                    9
--       Computations:             1
--       Processes:               11
--       Regions:                  8
--       Buttons:                  3
--       Dynamic Actions:          3
--     Shared Components:
--       Logic:
--         Items:                  2
--         Computations:           2
--         Build Options:          1
--         AI Configs:             2
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.5
--   Instance ID:     7674792827464339
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DEMO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Viscosity - APEX + 23ai Demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'VISCOSITY-23AI-DEMO')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'D778DF26FA25038CAC575444A43E4245933EEB446CDDE7E8BAB73F803A694D1F'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(18382166104159689)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Viscosity 23ai Demo'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Viscosity 23ai Demo'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>44891626707199
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_ai_remote_server_id=>wwv_flow_imp.id(18399132825975822)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(108)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(18382947576159673)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(18384090963159593)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/api_sports_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(18441112812405834)
,p_name=>'api_sports_credentials'
,p_static_id=>'api_sports_credentials'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://v3.football.api-sports.io/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/credentials_for_vai_demo_openai_o4_mini
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(19010596232578071)
,p_name=>'Credentials for vai_demo_openai_o4_mini'
,p_static_id=>'credentials_for_vai_demo_openai_o4_mini'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.openai.com/v1',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/remote_servers/vai_demo_openai_o4_mini
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(18399132825975822)
,p_name=>'vai_demo_openai_o4_mini'
,p_static_id=>'vai_demo_openai_o4_mini'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('vai_demo_openai_o4_mini'),'https://api.openai.com/v1')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('vai_demo_openai_o4_mini'),'')
,p_server_type=>'GENERATIVE_AI'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('vai_demo_openai_o4_mini'),'')
,p_credential_id=>wwv_flow_imp.id(19010596232578071)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('vai_demo_openai_o4_mini'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('vai_demo_openai_o4_mini'),'')
,p_prompt_on_install=>true
,p_ai_provider_type=>'OPENAI'
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('vai_demo_openai_o4_mini'),'o4-mini')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('vai_demo_openai_o4_mini'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('vai_demo_openai_o4_mini'),'{'||wwv_flow.LF||
'    "temperature": 1,'||wwv_flow.LF||
'    "max_completion_tokens": 8184'||wwv_flow.LF||
'}')
);
end;
/
prompt --workspace/remote_servers/v3_football_api_sports_io
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(18441433927405830)
,p_name=>'v3-football-api-sports-io'
,p_static_id=>'v3_football_api_sports_io'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('v3_football_api_sports_io'),'https://v3.football.api-sports.io/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('v3_football_api_sports_io'),'v3.football.api-sports.io')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('v3_football_api_sports_io'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('v3_football_api_sports_io'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('v3_football_api_sports_io'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('v3_football_api_sports_io'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('v3_football_api_sports_io'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('v3_football_api_sports_io'),'')
);
end;
/
prompt --workspace/remote_servers/demo_all_minilm_l12_v2
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(18825442196660356)
,p_name=>'demo_all_minilm_l12_v2'
,p_static_id=>'demo_all_minilm_l12_v2'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('demo_all_minilm_l12_v2'),'https://localhost')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('demo_all_minilm_l12_v2'),'')
,p_server_type=>'VECTOR'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('demo_all_minilm_l12_v2'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('demo_all_minilm_l12_v2'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('demo_all_minilm_l12_v2'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('demo_all_minilm_l12_v2'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('demo_all_minilm_l12_v2'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('demo_all_minilm_l12_v2'),'')
,p_embedding_type=>'ONNX'
,p_emb_local_model_owner=>'DEMO'
,p_emb_local_model_name=>'ALL_MINILM_L12_V2'
);
end;
/
prompt --workspace/remote_servers/credentials_for_demo_openai_text_embedding_3_large
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(19009820994583595)
,p_name=>'Credentials for demo_openai_text_embedding_3_large'
,p_static_id=>'credentials_for_demo_openai_text_embedding_3_large'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.openai.com/v1',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/remote_servers/demo_openai_text_embedding_3_large
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(19006421810690673)
,p_name=>'demo_openai_text_embedding_3_large'
,p_static_id=>'demo_openai_text_embedding_3_large'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('demo_openai_text_embedding_3_large'),'https://api.openai.com/v1')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('demo_openai_text_embedding_3_large'),'')
,p_server_type=>'VECTOR'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('demo_openai_text_embedding_3_large'),'')
,p_credential_id=>wwv_flow_imp.id(19009820994583595)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('demo_openai_text_embedding_3_large'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('demo_openai_text_embedding_3_large'),'')
,p_prompt_on_install=>true
,p_ai_provider_type=>'OPENAI'
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('demo_openai_text_embedding_3_large'),'text-embedding-3-large')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('demo_openai_text_embedding_3_large'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('demo_openai_text_embedding_3_large'),'')
,p_embedding_type=>'GENAI_PROVIDER'
);
end;
/
prompt --application/shared_components/data_profiles/api_sports_fixtures
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'api_sports_fixtures'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'response'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18792275139724101)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'GOALS_AWAY'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'goals.away'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18792521373724099)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'GOALS_HOME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'goals.home'
,p_remote_data_type=>'null'
,p_transform_type=>'NULLIF'
,p_expression1=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18792881691724097)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'SCORE_PENALTY_AWAY'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'score.penalty.away'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18793125223724096)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'SCORE_PENALTY_HOME'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'score.penalty.home'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18793408907724094)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'SCORE_FULLTIME_AWAY'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'score.fulltime.away'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18793753763724093)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'SCORE_FULLTIME_HOME'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'score.fulltime.home'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18794075003724091)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'SCORE_HALFTIME_AWAY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'score.halftime.away'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18794323724724090)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'SCORE_HALFTIME_HOME'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'score.halftime.home'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18794648668724088)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'SCORE_EXTRATIME_AWAY'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'score.extratime.away'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18794972828724087)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'SCORE_EXTRATIME_HOME'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'score.extratime.home'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18795296886724085)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'TEAMS_AWAY_ID'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'teams.away.id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18795534163724084)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'TEAMS_AWAY_LOGO'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'teams.away.logo'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18795866337724082)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'TEAMS_AWAY_NAME'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'teams.away.name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18796183533724081)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'TEAMS_AWAY_WINNER'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'teams.away.winner'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18796443484724079)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'TEAMS_HOME_ID'
,p_sequence=>15
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'teams.home.id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18796772472724078)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'TEAMS_HOME_LOGO'
,p_sequence=>16
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'teams.home.logo'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18797089103724076)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'TEAMS_HOME_NAME'
,p_sequence=>17
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'teams.home.name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18797321969724074)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'TEAMS_HOME_WINNER'
,p_sequence=>18
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'teams.home.winner'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18797609642724073)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'LEAGUE_ID'
,p_sequence=>19
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'league.id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18797982060724071)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'LEAGUE_FLAG'
,p_sequence=>20
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'league.flag'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18798285806724070)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'LEAGUE_LOGO'
,p_sequence=>21
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'league.logo'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18798515765724068)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'LEAGUE_NAME'
,p_sequence=>22
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'league.name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18798853763724067)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'LEAGUE_ROUND'
,p_sequence=>23
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'league.round'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18799161173724065)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'LEAGUE_SEASON'
,p_sequence=>24
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'league.season'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18799409301724063)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'LEAGUE_COUNTRY'
,p_sequence=>25
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'league.country'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18799745394724062)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'LEAGUE_STANDINGS'
,p_sequence=>26
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'league.standings'
,p_remote_data_type=>'boolean'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18800015505724060)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_ID'
,p_sequence=>27
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'fixture.id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18800386920724058)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_DATE'
,p_sequence=>28
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZH:TZM'
,p_has_time_zone=>true
,p_selector=>'fixture.date'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18800617326724057)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_VENUE_ID'
,p_sequence=>29
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'fixture.venue.id'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18800908859724055)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_VENUE_CITY'
,p_sequence=>30
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.venue.city'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18801242183724054)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_VENUE_NAME'
,p_sequence=>31
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.venue.name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18801540281724052)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_STATUS_LONG'
,p_sequence=>32
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.status.long'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18801873498724051)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_STATUS_EXTRA'
,p_sequence=>33
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.status.extra'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18802176426724049)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_STATUS_SHORT'
,p_sequence=>34
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.status.short'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18802410954724047)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_STATUS_ELAPSED'
,p_sequence=>35
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.status.elapsed'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18802773438724046)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_PERIODS_FIRST'
,p_sequence=>36
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.periods.first'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18803016924724044)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_PERIODS_SECOND'
,p_sequence=>37
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.periods.second'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18803398133724043)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_REFEREE'
,p_sequence=>38
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.referee'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18803672509724041)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_TIMEZONE'
,p_sequence=>39
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'fixture.timezone'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18803976070724039)
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_name=>'FIXTURE_TIMESTAMP'
,p_sequence=>40
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'fixture.timestamp'
,p_remote_data_type=>'number'
);
end;
/
prompt --application/shared_components/web_sources/api_sports_fixtures
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(18804284919724036)
,p_name=>'api_sports_fixtures'
,p_static_id=>'api_sports_fixtures'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(18792039707724108)
,p_remote_server_id=>wwv_flow_imp.id(18441433927405830)
,p_url_path_prefix=>'fixtures'
,p_credential_id=>wwv_flow_imp.id(18441112812405834)
,p_version_scn=>44875925142830
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(18804882381724028)
,p_web_src_module_id=>wwv_flow_imp.id(18804284919724036)
,p_name=>'league'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'22'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(18805261868724026)
,p_web_src_module_id=>wwv_flow_imp.id(18804284919724036)
,p_name=>'season'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'2025'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(18804437483724034)
,p_web_src_module_id=>wwv_flow_imp.id(18804284919724036)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/ai_config/demo_transation_assitant
begin
wwv_flow_imp_shared.create_ai_config(
 p_id=>wwv_flow_imp.id(19708547714843143)
,p_name=>'demo_transation_assitant'
,p_static_id=>'demo_transation_assitant'
,p_remote_server_id=>wwv_flow_imp.id(18399132825975822)
,p_system_prompt=>unistr('You are a professional translation assistant. Your job is to accurately translate any given text from the source language to the target language, preserving the original meaning, tone, and context. Do not explain or comment\2014only return the translated')
||' text. If the source or target language is not specified, default to English as the target. Be precise, natural, and culturally appropriate.'
,p_welcome_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\D83D\DC4B Welcome! I\2019m your Translation Assistant.'),
unistr('Just send me any text you\2019d like translated \2014 let me know the source and target languages, or I\2019ll default to translating into English. I\2019ll return a clear, accurate, and natural translation every time. Let\2019s break the language barrier together!')))
,p_version_scn=>44891346067085
);
end;
/
prompt --application/shared_components/ai_config/gold_cup_2025_config
begin
wwv_flow_imp_shared.create_ai_config(
 p_id=>wwv_flow_imp.id(18418728954246225)
,p_name=>'gold-cup-2025-config'
,p_static_id=>'gold-cup-2025-config'
,p_remote_server_id=>wwv_flow_imp.id(18399132825975822)
,p_system_prompt=>wwv_flow_string.join(wwv_flow_t_varchar2(
'You are a friendly, expert assistant for the CONCACAF Gold Cup tournament. ',
'',
'Your knowledge sources include:',
unistr('  \2022 Official match schedule and venues  '),
unistr('  \2022 Team rosters, historical results, and player statistics  '),
unistr('  \2022 Real-time match event feed (goals, cards, substitutions)  '),
unistr('  \2022 Venue metadata (seating, amenities, accessibility)  '),
'',
'Your goals:',
'  1. Answer fan questions clearly and concisely, citing date/time and team names exactly.',
'  2. Provide live commentary snippets in a neutral, descriptive tone.',
'  3. Guide users to tickets, parking, and in-stadium services based on their needs.',
unistr('  4. Ask follow-up questions if the user\2019s request lacks necessary details.'),
'',
'Behavior:',
unistr('  \2022 Always reference times in local stadium time (e.g., \201CJuly 5, 2025 at 7:00 PM MDT\201D).  '),
unistr('  \2022 If a query falls outside the Gold Cup scope, politely redirect (\201CI\2019m here to help with Gold Cup info\2014how can I assist you today?\201D).  '),
unistr('  \2022 For statistics or historical queries, respond with exact numbers and context (e.g., \201CIn the 2019 Gold Cup, Team X scored 8 goals in group play, ranking 2nd in the tournament.\201D).  '),
unistr('  \2022 For live updates, format each update like \201C23\2032 \2013 Goal by [Player Name] (Team) \2013 assist by [Player Name]\201D.  '),
'',
unistr('Always keep your tone enthusiastic, accurate, and helpful\2014just like a stadium PA announcer who also happened to be a stats guru.')))
,p_welcome_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\D83C\DF89 Welcome to your Gold Cup guide!'),
unistr('I\2019m your friendly assistant for everything CONCACAF Gold Cup\2014matches, stats, venues, and live action. Whether you\2019re tracking your favorite team or heading to the stadium, I\2019ve got you covered.'),
'',
unistr('Ask me anything about the tournament\2014let\2019s kick things off! \26BD\D83D\DD25')))
,p_temperature=>0
,p_version_scn=>44891184325839
);
wwv_flow_imp_shared.create_ai_config_rag_source(
 p_id=>wwv_flow_imp.id(18810548748567139)
,p_name=>'goldcup-2025-fixtures'
,p_description=>'This is the list of fixtures of the current Gold Cup in 2025. If the list is empty or if only the headings are provided ignore them.'
,p_rag_type=>'DATA_SOURCE'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT fixture_id,',
'			 league_name,',
'			 league_country,',
'			 league_season,',
'			 venue_name,',
'			 venue_city,',
'			 status_desc,',
'			 TO_CHAR(fixture_ts AT TIME ZONE ''America/Chicago'', ''DD-MON-YYYY HH24:MI'') AS fixture_ts,',
'			 fixture_referee,',
'			 home_team_name,',
'			 away_team_name,',
'			 goals_home_team,',
'			 goals_away_team,',
'			 score_halftime_home_team,',
'			 score_halftime_away_team,',
'			 score_fulltime_home_team,',
'			 score_fulltime_away_team,',
'			 score_extratime_home_team,',
'			 score_extratime_away_team,',
'			 score_penalty_home_team,',
'			 score_penalty_away_team,',
'			 periods_first,',
'			 periods_second',
'FROM TABLE(get_footbal_fixtures_pipe(:APP_LEAGUE, :APP_SEASON))'))
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(18382947576159673)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>44891626706429
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18394477583159333)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Chatbot'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai-sparkle-message'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19662818580167856)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Generate Text'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:::'
,p_list_item_icon=>'fa-ai-sparkle-improve-text'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19615613573290429)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Chatbot - Custom'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai-sparkle-message'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(18384090963159593)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>44869208638768
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18395941017159286)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18396340473159282)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(18395941017159286)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18396799441159279)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(18395941017159286)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000001C5494441545847637C191DF29F610001E3A8034643603404867408BCFCFE035C82887372905D92905D0E802CE7545266E01611';
wwv_flow_imp.g_varchar2_table(2) := '617873EA24D98E20CB0130CBC5D4D5C13E7F75F32603D3A3870C3CAC2C248704590E78CBC1C5C02A288862D9EB9B371894F97869EF0090EFC5824219C48243512CFB7EE33AC38BF666924381E41000394067E92AB0E54FE7CE06D3D2C9A960FA7E4B2303';
wwv_flow_imp.g_varchar2_table(3) := 'CF83BB248502C90EF8A2A0CCA05853CF00F2F1AB6D9BC196C91795D1CF01FF3D7DE1C1FF6AED6A065E6D1D064E0D4D48625CBB9A81713BC451C4029243E0B58C3C8356433356F369EE0050FC33A9AAE374C0B5865A867FB76F925426101D02B0BC0FF2BA';
wwv_flow_imp.g_varchar2_table(4) := '72733B380440E90004605170B7B612CC27A54C20DA01DF797819044D4C19BEBE7DCBC0EFEE05B614D901A0E0E7FCFE15923B4E9C6010FEF18DA86440B4033E494A33C04ABE0F1F3F31C866E7A138E0ED8A650C6C7F7E4112E3CD9B0C7CCF9FD2CE01200B';
wwv_flow_imp.g_varchar2_table(5) := '780D8CC03900043E5FBDC2F064F70E06551B5BDA3B0056EE7FFDF3079C204574F5185EAD5BCDC0CDC2C2F04F4E1E1C4A340981C72CAC0C5C2CAC2871FBE5F71FB08F912B215062FDC5CBCB20FBE73775A38028D3C85044742224C36CA2B48C3A60340446';
wwv_flow_imp.g_varchar2_table(6) := '430000758BFA015D70702F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18385168046159548)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE9000009AB49444154785EED9DDF6F154514C7670B25DC081A41EE051E34861804B1F8A4C61FA14D7CF505AE0F4D1BFE08137D30316D63';
wwv_flow_imp.g_varchar2_table(2) := 'E2837F0669A93F2EBCF86AD21235515F94CA0FD110A2093F6EF961B498120ABD66B69C76BAECEECCECCCEECE4CBFFB425BE69C9939E773CF3933BB3B3762B86001030B4406B2108505180002044616004046E683300002034616004046E6833000020346';
wwv_flow_imp.g_varchar2_table(3) := '16004046E683300002034616004046E683300002034616004046E683300002034616004046E683B073007587875BEBDCD27F7FFDEF1BD1674B5BBA34EDD6F4F4EACF2E98A27680AE8FB607FB181B8C7AEC488FB141178CE2FC182236C1C7B8CCD8EC9EC9';
wwv_flow_imp.g_varchar2_table(4) := 'CE6C9DE3AD05200ECDA61E1B0330965CFF08A8D66467DC924665359502047094FD52BC61C426AA04A91280BAA3ED71D66363C5AD02496D0B540452E900011E6DD7DB13A800A2D20042BAB2C78189A688B1D987119B28ABD82E05A07865D56333261387AC';
wwv_flow_imp.g_varchar2_table(5) := '5D0B2C476CA80C88AC030478EC3ADEA6B63220B20ED0FC487B06CB739B6EB7A78BA7B3E65467C89E4666F7AD0C14CC365D53922ECB85B5B50804784A7278196A2D42640FA09176AF8CB942673916684D75ACF8DE8A12449F729C5CA6565B05B51D80107D';
wwv_flow_imp.g_varchar2_table(6) := 'CAF47529BA6D15D4C60021FA94E2DF4A94DA884200A81257B9D9898D28640E10D2979B74288ECAB498360208BBCE8A5E72B899691A330208F58FC364A80ECD704F0800A91A3AD076A675901940A87F82C0CAA40E2A0C50FCF644DFD28D202CB8D127B1DC';
wwv_flow_imp.g_varchar2_table(7) := 'BFBBE8DB1E0068A3C3C3E70F80408191056A01E8F8B101F6303A6B347008BB610100E4861FBC1DC5A6DEE1D689537345C65FBC0642042A626F376500909B7EF1665400A81C577517EFC58A5B8DADE574E08A560064DF131C9E1B8B8BB1E2DD8D46D81001';
wwv_flow_imp.g_varchar2_table(8) := '20BB00113C3B9ACD58F19DF9F9B0210240F60012E179E1ADB763C57F7CF76DD81001203B00A5C1439A83860800990324D63CAF1D3DF698C2FF6EDF66E7CEAC9CE5145C4D0480CC0012E1397464903DB17367AA4211A27DDBB7B36DFD9BCD3A76451A0099';
wwv_flow_imp.g_varchar2_table(9) := '79E2EC9DBF6305CFBF748835F7EFCF5526427478C7D3661DBB220D808A7B82A28F0A3CD4CBFCA54BECCAF973E1A43200540C2059DD93A7958AEA205219002A06D0E57F17D8DD070F945257B2074A65DB366F66FB9EDC5E6C00AE4801207D4F14495DC95E';
wwv_flow_imp.g_varchar2_table(10) := '82496500481F202A9CF9AACBE4BA76F142BCC9E8752A03407A0888B58F9E64766BAF531900D2C380A2CFC0C8713DC18CD6B77E9D63D7E67EF1370A0120750E28FA70789AC7DE5317CC69B9F8DB45F6FD471F02201D6B763D7D2291565EEF9CFE5A67BAD2';
wwv_flow_imp.g_varchar2_table(11) := 'B6DF1C7D97799BC61081A4FE8D1BDC5D7AC02E2F2C309BD1877ABE30FEB1BF690C00A901A493BE785ABAF2F9C958F1332F0F48D31DA5312FA310005203888AE7BCF445E0F0A23879BDF9E967ACF1E281CCCEBC4D6300480E906AF4A154C41F26DBF5EAEB';
wwv_flow_imp.g_varchar2_table(12) := 'B1E29B3FFD103F54B677E0157670FC93CCCEBC4D6300C80E409486447848F3EF9D2FD9ADBFFE64795188E4BD7B5E0800A9039407C0FCA9AFD8DCD4099606D0E2D5ABECE72F4EE616E0DED64100480E90CAF23D2F02511A93ADE0BCAC8300901C20D5029A';
wwv_flow_imp.g_varchar2_table(13) := '6F08F2EB8DF73F58554AD187FF41B67F0480E4BE885BF8B691C8019215C17C5E94C6E2E5FBB3CFC573E5B50FBF64D187B7A142DAABA7151181E4D4AB0294848834CB96F0D40E00C97DE15D0432D981E67551DEDE4FD25C14C1BC7ABC0311289F7AD53D20';
wwv_flow_imp.g_varchar2_table(14) := 'C5CF4E6E3300A468459F6A209308A4688ED5660490577B418840F96EAE0320A430C947CFC708A4B20AD38D38A8810A5A0C00A51BCECBFB614861F99F02DA85AE220211405E3DD60180B2012278A8856C2759D4C497F00BE7CF499F051265F84E345DDE40';
wwv_flow_imp.g_varchar2_table(15) := '0480D2012278C483A2543704B9468241073A2EC35F93FEE7E67CFCBA8F171001A0C70112E1E177D7E94DD23201A2253CBD674FAF3F3B0F11005A0F50121EFEBF04904E1DA41B810820F17C212F2002406B00A99C32A69A927401A2F6C903AA9C3FDD0C00';
wwv_flow_imp.g_varchar2_table(16) := 'AD00441B86FCE7B453C6C891AA694C07A064FA4A2655A74FF300402BEE929DB6A19BC68A009475C299D3A77900A01580F8231B7CC545A7ABA6ADCD7E3C7D4AE9B920DD555856FA12C74051C8B9678500D05AFA929D344647B2A8A431D508244B5F0411F5';
wwv_flow_imp.g_varchar2_table(17) := 'EDDC7D3200C498CE793FAA5148152095E823AE049DBB530F80D600CA3B653519096451480520D5E803801205856B37532902A900C4A7A212855400528D3E00283080546A2119403AD107000506104521FE6F562A9301A4137D00508000D1B23AEBF6461E';
wwv_flow_imp.g_varchar2_table(18) := '40F4D8866CDB40341BED05A18876F0BD30DD1A88E02107A7BDF3950590F8EE189757850800091F275F8B68EE443A5995EE92D35BABC954960690080FDF1014EFBDED3D7030F37B3690C202486159DFB823DE43136FB42601A277E7B929C434A4FB652D48';
wwv_flow_imp.g_varchar2_table(19) := '611EA6305A75259D4F9F0B11023ABD959FD4C12FFE3B9DC4AA229FB51B8E14E6690A13E1C9BB8DA0727E745EF410E5D32002401E02A40A8F98A1794AE3173F90935F1C3A7EA97C3F98980E931001208F004A2B9613659CF4572AAE8BDC3D179F8A7C6A57';
wwv_flow_imp.g_varchar2_table(20) := '33FE1E3200E40140492A4C9E473601888F232B25A28876B088E6A9A3FBE87BDE09A256A3A19476B2421107805FADC65669B492E9B8BBB4B4DAC4745C8507932588BBF1D64DBAB11402A08DE56FEBB30540D64DBAB114D602D0F0708BF52DDDD858960E74';
wwv_flow_imp.g_varchar2_table(21) := 'B6002850C75635ADE5FEDDADE9E96E91EEA22242F1121511A8A8E9DC930340EEF9C4AB11D501501C8546DA3DAF0C85C1A65AA035D5299C890A0BF291CC8FB4677A8C997DED319C5AAF052236D19AEC8C171D841140DDD1F638EBB1B1A29D43CE010BD409';
wwv_flow_imp.g_varchar2_table(22) := 'D0F5D1F6605F8FCD3860060CA1A005962336B467B2335B509C194520D44145CDEE8E9C49FDC367610C10EA207760D01E8961FAB20210D298B6DBDC11700120ACC6DCE1417724A6E9CB4A04E24A1085745DE7407B0BD1C71A4028A61D0042730836A28F5D';
wwv_flow_imp.g_varchar2_table(23) := '80B027A4E9C21A9B5B8A3E56018AA31020AA910AC5AE2DC2631D2014D48A4EACA959C4D86C73AA3364B37BE37DA0E4605050DB748F5D5DA6BBCE69A3B10E105665769D6E4B5B19F09492C268C23C126DEAB131DCADB78540313D3C6D3D8CD884C9FDAEBC';
wwv_flow_imp.g_varchar2_table(24) := '9E4B8940628728AC8B39DE8A94E582B9B21496EC081059C1414F4905F0949AC2D2660B90F418D06D5D76BAAA2D02A54624FE473C8CA6CB486AFB3AC0A181945E03C92C142FFBE9B15800253357FCFF1C985EC4CE2C33365B5671AC34101BCF03A976A4DA';
wwv_flow_imp.g_varchar2_table(25) := '2E7E5D88AEFEFB6B3FAB2A08ADDDD29675EF6B157D7FAB2CB3D41E81CA9A18F456630100548D9D83ED050005EBDA6A260680AAB173B0BD00A0605D5BCDC4005035760EB6170014AC6BAB991800AAC6CEC1F6028082756D35130340D5D839D85E0050B0AE';
wwv_flow_imp.g_varchar2_table(26) := 'AD666200A81A3B07DB0B000AD6B5D54C0C005563E7607BF91F19F938FA330422360000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18385451866159538)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900000BFB49444154785EED9DCDAB5ED51587B77003BE24114CEC4DA9189160D38F343AAAAD5A74D0A9932496D240FF88421D088250E8';
wwv_flow_imp.g_varchar2_table(2) := 'A085FE118213354E3AEDA062ADAD231B133F2A224D51CCAD4668526EC10B967DCD79BBB2B3CF39FB6BBD37FB5DCF9D25EF3EFBE3B7D6B3F75AFBEC73CE6D97CF9EF9D2F187024615B80D008C5A9E61EF2A00003882690500C0B4F9193C00E003A6150000';
wwv_flow_imp.g_varchar2_table(3) := 'D3E667F000800F985600004C9B9FC103003E605A0100306D7E060F00F880690500C0B4F9193C00E003A6150000D3E667F000800F985600004C9B9FC103003E605A0100306D7E060F00F880690500C0B4F9193C00E003A6150000D3E667F000800F985600';
wwv_flow_imp.g_varchar2_table(4) := '004C9B9FC103003E605A0100306D7E060F00F880690500C0B4F9193C00E003A6150000D3E667F000800F985600004C9B9FC103003E605A0100306D7E060F00F880690500C0B4F9193C00E003A6150000D3E667F000800F985600004C9B9FC103003E605A';
wwv_flow_imp.g_varchar2_table(5) := '0100306D7E060F00F880690500C0B4F9193C00E003A6150000D3E667F000800F985600004C9B9FC103C01EF9C0B52F76DCE5EDEDDDD68F2C16EEC0BE8D3DEA89ED6601600FECEF9DFF83AB576F68F9D8C18340B007B60080158B1E73FEA10B40B0626338';
wwv_flow_imp.g_varchar2_table(6) := 'E70060859A4F393F10ACD010A229005891EE31E73FF1D8E3BBAD5F78E58F84432BB243D80C00AC40F8CBDBFF759F5C4F7887E6BCF3EF3F7C78F79FFFF9EC332058811D624D0080B2F06333FFE0FC43F340A06C8891EA014059F7BF5DF9FC8616EEFBEE09';
wwv_flow_imp.g_varchar2_table(7) := 'B779FC78B4D51082031B1BEED81D07957B68BB7A0050B4FF07FFBEEAAEEDEC2C5B9872FEA1D0D67BEFB90F2F5E585E03048A066217484FDC30EE4F71FE3108BEBE58B8238BDBF53A6BB866560005E3D7383F10281864A24A0068AC770BE71F83801B658D';
wwv_flow_imp.g_varchar2_table(8) := '8D4508D45E5099F41EDADC74F73FFAA3AA46DEFFD3ABEECAD6D66E1DE4035552462F660568A86938FBCBBDFED266D8192A552EED3A0048D369B654CBD0276C2CDC1922149A354772010048966ABA60EBD0276C4D8642FEB7070EDDD9A8E7B6AB018006F6';
wwv_flow_imp.g_varchar2_table(9) := 'D7087DC26E110A353054A40A00A8D45533F42114AA344EC2E5009020D2541119FAE4DCEC2A6D965DA152E5E2D70140859EE1ECFFD0A9D315B5A55D1A864224C469BA8D9502800AFD563DFB0F5D0D77854888CB8D080085DAC5CEF81756557D196785CA25';
wwv_flow_imp.g_varchar2_table(10) := '048042EDC263CE85D534BB8C55A04C4A0028D0ED569AFD87EE930B141892B34065A2C9D9FFE4D99FBBCDD34F96555479D5F6BBEFB8D79E7E6AB716CE099589C90A90A95B38FBFFF8E5DF67D6D0B6F81F4E3DB1AC9055205F5B00C8D44C02B097B3FF7247';
wwv_flow_imp.g_varchar2_table(11) := 'E8DC8BEEFCF3CFB10A64DA71280E0099C2C9F067AF677FDF751906F97FB30AE419140032F4BAD566FFA1EB6F3FFB8CFBF8FC9BAC0219B664052810EB56497EC3AE930C1718F3FA25AC0089DA85EFF7A9097FB6CEBDE83E7DEBFC72D6FEC6C907DD5DDF3B';
wwv_flow_imp.g_varchar2_table(12) := '59B59B44329C68C8A0180024EAD622FC09E3F558D3A589B50C83C803128DCA7D8074A1E43B7E4A9CD4CFFAC36ECD5CAB25F51306CDA91AFF9D152051B79ADD9F70E6BFEBE8BDEE9E1F3EE21677DFBDDBFABFDEF88BFBFCD225F7E9A57F2C7BF3C8AF7FE3';
wwv_flow_imp.g_varchar2_table(13) := '16DFFA7662EFBE2A26C3208E46A4490700093AC9F0C7C7EBDF79F6570957FDBF880C4FFC5B22BEF6FD1F44AFFFFB4B2F2C21A86D873028CD440090A0536DFC2F67E6877FF1CBC916FFFCBBDF16AF0232CCE268448261C901D24492F17F6E68229D726AF6';
wwv_flow_imp.g_varchar2_table(14) := '1F7A225781DCB6C803D2EC294BB10224685613FFE702E0F301FFD8A3FFCB4D86C35C833C60DEB80030AF91AB01403AA54F7EBF79E627932DD6001026C2E401F3C60580198DE40DB092C4349C95737280929B6DDC0F98777A42A00C8D6A1360DF9474CAA9';
wwv_flow_imp.g_varchar2_table(15) := '5540CEFE25B0856DF1A8E4BCA1590166346A0140EC3EC09D478F2EB743B73FFAC8FDF3F5D7AAEF03F8A19008CF3B3D2B408646353B40B219ED3BC1435B0090615CB641E7C56A05806F290582DCADCF700400306F5356800C8D5A023034AB711A941520C3';
wwv_flow_imp.g_varchar2_table(16) := 'A8A22839C08C6E1A0094992AED2A5680349D86520030A357CD3D803C53B42BCDA1B8742D010000D2BD650D4B020000ACA15BA70F09000020DD5BD6B024009004AFA15BA70F09000020DD5BD6B0240000C01ABA75FA900060CD00E0A9B074E7F725016046';
wwv_flow_imp.g_varchar2_table(17) := 'AF1687E1F24C52571A00F2F4038009BDC23741971E51CE33495DE9F0BC1147A2A7F50480117D621FC1E80100F9ECC13034201887000022DA4C7D01A6E429AD31F9BDB3FABFFB7EFAB3EC77008DD5298F41C8324010570C00025D621FBEFEF0E28565A9DA';
wwv_flow_imp.g_varchar2_table(18) := 'E3CA434532546955A7AF5B02E0BF5B2CFB0E04374300004293B1AFBECB8F53B772560940EEDB1FC6667F59E7A1CD4DE75FC3127E5215086E540F00AEEB31E6FCFE67E944ADF2006D00E457EB81801C60722B60CAF9FD85F2EBECB7320032013EF1D8E36E';
wwv_flow_imp.g_varchar2_table(19) := 'FFE1C3CB7103013940548139E71F2EFAEBCBE796D7B7488435560019FF3F74EAF44DE3050272801B1448757E7F51EB3CA03500B1F83F463C109003EC2A90E3FC21002DC2204D0064FC9F0281E537C8994D82E5A38EC38EC954A220F3005FAE360C6A0DC0';
wwv_flow_imp.g_varchar2_table(20) := '5CF8138E4DAE6896DF246D128070F68FC5CB31185A86412D01480D7FC231C9BCC6EA2A60120039FBCF850BD2695AEE06690190339E301FB0F836697300845F7B4C9DFDC3EDD0DA30A82500B9E18F845AAE6A1657017300C8F02767B61C9CA65518D40A00';
wwv_flow_imp.g_varchar2_table(21) := '594FED782CE602E600902FBA2A71985661502B00C2B33F9BC78F4FDEF40B7F94E301802CE9FA2C2C0108EF96A68EA8C52AD00280F0EC7F4E38378C1500CE9EF932D5F0EB504E26C0250E13E602A5F7045A0350B29AC5EE725B4B84CD85402D00F08E23B7';
wwv_flow_imp.g_varchar2_table(22) := '104B4E88D602D062F6070083CF04B702A0F684682D00F2E05BCDEC1FC2CC0AB00E71CEC4185A0150BB0AD400D072F60700728062E46B76846A00A8DDF999BA23CC0A50EC0E7D5CD87205F023963B42394F769502507AEC61CA3A329F01803EFCB8B897AD';
wwv_flow_imp.g_varchar2_table(23) := '01080FC9A526C42500841FDBAB8DFD498249828B411A3B4E90BA2D5A0240CBC457F69F15A0891BF45149EB15C08F3A3C5496120AE5021026BEAD667F926092E02A7243E71F2A9B0B85720008439FA18D5610B00254B9405F17B75C0164021CAA30170AE5';
wwv_flow_imp.g_varchar2_table(24) := '0020431F7F5EE7DACECEB2B9161000405F3E5CD5DB1600F8C4F7E377DE7657B6B6967D19DEB723CF1A4D41900A4018FAF85D9AF0819E9427DAD8058A2BC051884C9CC25D1F7FB97CD954F8BCC1583E900240E8FCF2BC7EECF58DA587FB5801329DA0E7E2';
wwv_flow_imp.g_varchar2_table(25) := '352B402CDE8FBD692D74CE1804730084CE9FD28EB74B494804003D7B7466DF4B018839FFD4135473108C01E013DEAB172FB8F3CF3F775378151B6AB8E294400000994ED473F1120042E7F789E891C5C21DD8B7312985CC074A354B7D48256C2B67250080';
wwv_flow_imp.g_varchar2_table(26) := '52EB74785D2E00E14E4FAA430ED24CBD6A7D4EBEDAB652210080394BACD1EFA9004CEDF4E4CAE121F07F9F6C6FCF5EEA9DDEFFA5AC30B1CA4A76880060D62CEB53200580B99D9E166A48476DFDCAF2DC1D22006861D14EEA98032075A7A776B89A00F8BE';
wwv_flow_imp.g_varchar2_table(27) := 'C520180B8900A0D69A1D5D1F03C0CFF8FE2FBCB9E5FF4FEB5D39DA00F8BE8FED10F9DFE4DB2300A02307AEEDAA0460AAAED49D9ED2FEAC0280A16F39BB513C0F506AD14EAE4B01A0754C1E9346CECEAB682F75370A003A71E4D26EC61C61D87939B06F9F';
wwv_flow_imp.g_varchar2_table(28) := 'DBBFB131BBBF5FDAB6BCCE0370F9FAAED0B13B0EB6A832A98EA91DA9558098D4C915163277166885DAD254070A00400746A28B7A0A00809EB6D4DC810200D08191E8A29E0200A0A72D3577A00000746024BAA8A70000E8694BCD1D2800001D18892EEA29';
wwv_flow_imp.g_varchar2_table(29) := '00007ADA5273070A00400746A28B7A0A00809EB6D4DC810200D08191E8A29E0200A0A72D3577A00000746024BAA8A70000E8694BCD1D2800001D18892EEA2900007ADA5273070A00400746A28B7A0A00809EB6D4DC810200D08191E8A29E0200A0A72D35';
wwv_flow_imp.g_varchar2_table(30) := '77A00000746024BAA8A70000E8694BCD1D2800001D18892EEA2900007ADA5273070A00400746A28B7A0A00809EB6D4DC810200D08191E8A29E0200A0A72D3577A00000746024BAA8A70000E8694BCD1D2800001D18892EEA2900007ADA5273070A004007';
wwv_flow_imp.g_varchar2_table(31) := '46A28B7A0A00809EB6D4DC810200D08191E8A29E0200A0A72D3577A00000746024BAA8A70000E8694BCD1D2800001D18892EEA2900007ADA5273070A00400746A28B7A0A00809EB6D4DC810200D08191E8A29E0200A0A72D3577A00000746024BAA8A700';
wwv_flow_imp.g_varchar2_table(32) := '00E8694BCD1D2800001D18892EEA29F03F1F64A979FBF712F10000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18385707650159534)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000141349444154785EED9D5D8F5D551980D7292D75D29684B64CA58D3584280205341051D1749A782B173068431B7F84895E9818DA';
wwv_flow_imp.g_varchar2_table(2) := '9878E1CF30B4A93270516F4D3A8D123F02114B01D110624D5B3AA5102D642C9439669DB20F6B56F73967EFBDBEDEB5F63337CACCDEEBE359EFFBECB5D6FEE840F1030108F496C0A0B73DA7E310808042000401047A4C0001F478F0E93A0410003100811E';
wwv_flow_imp.g_varchar2_table(3) := '1340003D1E7CBA0E0104400C40A0C70410408F079FAE430001100310E8310104D0E3C1A7EB104000C400047A4C0001F478F0E93A0410003100811E1340003D1E7CBA0E0104400C40A0C70410408F079FAE430001100310E8310104D0E3C1A7EB104000C4';
wwv_flow_imp.g_varchar2_table(4) := '00047A4C0001F478F0E93A0410003100811E1340003D1E7CBA0E0104400C40A0C70410408F079FAE430001100310E83101043061F0CF1D7C7C77DD9FE6366CBEB3C7F122BEEBAB6BD72ED63572EF899317C4373E41037B2B808B87171734EF0D4A2D0C86';
wwv_flow_imp.g_varchar2_table(5) := '6A7FC57EA8D4E8F7FC944B60A0D4B2EEDD70A04EEBFF5D536AF9CE679746BFEBDB4F6F04A013FE96A17A6634F02479DFE2BC517FB5182A29EC7A76E948A393323FA85801E884AFAEEE247CE6519AA8F995104A9E21142780EA4A4FD227CA9A92AB1DA8A3';
wwv_flow_imp.g_varchar2_table(6) := 'A5CD0C8A1000495F72D609ECDB401DD5AD2A4106590B80C417981C7D6A520122C85200247E9FB22C83BE66BC34C84E00970E2F1E519FEEE667101A34B14F043214413602E0AADFA74CCAB8AF9949200B0170D5CF3821FADAF44C44205E00247F5F33A880';
wwv_flow_imp.g_varchar2_table(7) := '7E672001D10220F90B4882BE7741B804C40A80E4EF7BE614D47FC11210290092BFA0E0A72B3708089580380190FC644CB104044A40940048FE62439F8E550484494096000E2D0E891408944E606DA00E48F9FE80180170F52F3DECE9DF679300B53C7F6C';
wwv_flow_imp.g_varchar2_table(8) := 'E9800422220440F24B0805DA10958090A5800C0130F58F1A7B5426838084A540720170F597118CB4223E01FDC5A1D44B81A40220F9E3071D35CA22907A16800064C503ADE91981D4B3806402E0EADFB348A7BB1309A49C0520000213028909A49C05A413';
wwv_flow_imp.g_varchar2_table(9) := '003BFF89C38EEA2511D8756C29492E26A994E9BFA4D0A32D1208A45A06A41100577F0931471B041148B50C882E80D1BFD83354A704B1A72910104120C52C20BA0098FE8B88351A21914082C783A30B60E5D0E229FED92E89D1479B521348B10C882E804B';
wwv_flow_imp.g_varchar2_table(10) := 'ACFF53C719F50B2610FB6E40540130FD171C79344D0481D8FB000840C4B0D30808DC20107B19105500ACFF0973084C2750B40058FF13FE10984D20E63E40B41900F7FF670F3C4740401388B90F104D006C0012DC106846000134E3C45110289340C40782';
wwv_flow_imp.g_varchar2_table(11) := 'A2CD00D8002C3356E9957F023137021180FFF1A344083811285200DC01708A094EEE110104D0A3C1A6AB10A82310EB5660B425003300021D02CD0914258073071FDFBDF9965BCF37EF3E4742A0DF04AE7DF2D19EBD274E5E084D21CA0C0001841E46CA2F';
wwv_flow_imp.g_varchar2_table(12) := '8D0002286D44E90F045A1040002D607128044A2380004A1B51FA0381160410400B581C0A81D208142580CB4F3FF5F0DA60F8526983447F20108AC086E1E0913B8E3FF772A8F2AB72A3DC054000A187B17DF99756FFA7DE595D1D9DF8F9B939B56BEE73ED';
wwv_flow_imp.g_varchar2_table(13) := '0BE18C6004104030B4146C267F450309C88A0B04206B3C8A694D5DF2230179C38B00E48D49F62D9A96FC4840D6F0220059E3917D6BEA927FDFFE8551BFCE9E5E5ED73F9603E9871B01A41F83625A3029F9B7ECD831EAE38757AE200161A38D00840D48AE';
wwv_flow_imp.g_varchar2_table(14) := 'CDB1937FFBFCBCDA7DEF7DAA4AFEAA5F4840D608230059E391656BEAAEFC8F3EF1E4D4BEFCF30FBF57EFADAC8C8FB97BDB36B575D3C62CFB9F73A31140CEA327A0ED1F7C7C5DBD75F5EABA96E835BF7DE5B79B5A37134002F1071401C4675E548D6FFDF7';
wwv_flow_imp.g_varchar2_table(15) := 'AAFAE0FAF5719F9A24FFA4E5C0D68D1BD5DDB76D2B8A8FF4CE2000E92324B87D76F2DF75FF3E357FCF3DAD5ABCF2E69BEAEDD7CE8ECF4102ADF0391F8C009C11F6B3007BDDDF25F92B72B604B83D182FA610403CD6C5D4E433F92B286C0AA6090F049086';
wwv_flow_imp.g_varchar2_table(16) := '7BD6B5FEEDBDF7D7B57FD68E7FD3CEDA127868FBED4D4FE5B88E04104047707D3DCDBEFAB7D9F49BC5CCBE33C07EC02C62EE7F4700EE0C7B534288A9BF0D8FFD80B8E18400E2F2CEBA3673EAEFB2E9370B02FB01B308F9FB3B02F0C7B2E892ECABBFAF75';
wwv_flow_imp.g_varchar2_table(17) := '7F1D349602F1420901C4639D6D4D31A6FEB396023C2518267C104018AE45956A4EFDF54B3E5FFAF677A2F4CF5C0AB0211806390208C3B59852535CFD2B78F652800784FC871502F0CFB4A812636DFC4D82C6B30161C3090184E59B75E975EFF8A7E890F9';
wwv_flow_imp.g_varchar2_table(18) := 'DA30B300BF238000FCF22CAA34FB893F299D6343D0DF4820007F2C8B2AA9C9873D5375980D417FE411803F964595645EFD773FF855B5F3810793F7EFCCB15F8DDBC07B027E860301F8E1585429F6D5FFBB2FFC3679FF56FFFE867AF1A73F19B78365809F';
wwv_flow_imp.g_varchar2_table(19) := '2141007E3816558AF9A18F070FFD50CD3FF99488FEBD7EE467EAC29957466D6119E0674810801F8EC594627FE34F92009805F80F3304E09F69D6254A9CFE9B409905F80D2F04E09767F6A5999B7F92AEFE15587B16C066A05BC82100377E459D1DEAEAAF';
wwv_flow_imp.g_varchar2_table(20) := '9376EE2BF77A63F5BB27BEC766A0279A08C013C8128A3105E07AF5D749FFF689E3E34DBB8A4F754BD16563916580BF684300FE58665F92AFE9FFCAF3CF29F39E7D1D1817C1B00CF0176A08C01FCBAC4BB277FFBBDEFB37A7E7B380E8D9C07D477E3EEBB0';
wwv_flow_imp.g_varchar2_table(21) := '9BFECEDD80D6C8269E8000FCB1CCBA2473FADF3531ED2BFFCEBD5F545FF8E6636A6ECF9E119BCB7FF9937AFFDC39F5EEB97F8D59759D0998CB005E10EA1E7A08A03BBBA2CE747DF8C7BE2AEB8F86DCF1F56FD432D222D0AFF9563F8FFDE297AD3709D907';
wwv_flow_imp.g_varchar2_table(22) := 'F0137E08C00FC7EC4B31D7FF5D12D2BEFA7FEB473F9ECAE41F4BBF19CF04BACC38D807F0137208C00FC7AC4BF1B1FE37AFC8D3AEFE15A8D5F3E7D55F7F7D7CF49F5D04A0CFE376A07BD821007786D997E063FD6F26E3D77EF0F478DD3F098E29007D4C97';
wwv_flow_imp.g_varchar2_table(23) := '4D47533ABC1CD42D0C1140376E459DE5E3FEBF998C4D0460EF03B80A809783BA852402E8C6ADA8B35C3700350C53007AF7FFCB8BDF9FCAC81440D73B01E6BE0302E8169208A01BB7A2CEF2F10090BD29376D16604FFFBB0A808D40F7304400EE0CB32FC1';
wwv_flow_imp.g_varchar2_table(24) := 'F50E4005C09C05E8DFD56D06EAE4FFF71F5F5CF72C4097E9BF2E9F0782DC430F01B833CCBA041F7700C63BFBD6577B2A09547FB71F02D2BFEF7AF5AFCAE44E805BF82100377ED99FED53001A4693F7002A68AEC9AFCB41006E218800DCF8657FB66F0134';
wwv_flow_imp.g_varchar2_table(25) := '9180BEEF7FD7C1A75B3FFD57079B5B816E218800DCF8657FB68F67002641D0B301FDF3EEAB6746FFABBF2CBCEDFE7D5E12BF6EDF817702DA87230268CFACA833420A2006285E0A72A38C00DCF8657F3602C87E089D3A80009CF0E57FB28FA70053526006';
wwv_flow_imp.g_varchar2_table(26) := 'E0461F01B8F1CBFEECDC6700E65D07F600DA87230268CFACA8337217003300B77044006EFCB23F1B01643F844E1D40004EF8F23FD97C0EA0EB7BF92929300370A38F00DCF8657F764902E09B00EDC31101B46756D419219E048C09884781DD682300377E';
wwv_flow_imp.g_varchar2_table(27) := 'D99F8D00B21F42A70E2000277CF99F6C7E0C44F7A6CB07415351B05F07E6A320ED470201B46756CC1976F2E72680BA370F9140BBF04400ED781573745DF2EBCEF97845D786A4AFD4FAC7E73F10AACB9BF4EA3112681EA608A039AB628E9C94FCBA83BE6F';
wwv_flow_imp.g_varchar2_table(28) := '059A49EA7B7931EDDB0348A059B82280669C8A39CA4EFEEDF3F36AF7BDF7A9B3A797477D0C2900DFB30BF30EC05DF7EF53FFB9BCA2DE5B59198F1512981DB6086036A3628EA84B7EFDDDBE0FAF5C190B4077B6EB37FAEA409957E99002D8B77F416DD9B1';
wwv_flow_imp.g_varchar2_table(29) := '63F44F8E2181E6218B009AB3CAFAC849C95F75EACF2F3C3FEE9FCFA97A2801D8D3FF479F7872DC7E24D03C5411407356D91E392BF975C7CCA4F1B90C882100BD8CD13319F30709340B5704D08C53B647992FFBE84ED425CB6847FDCD37D5DBAF9DF5BE0F';
wwv_flow_imp.g_varchar2_table(30) := '104A00E63B007AFD3F7FCF3D378D1112981DB6086036A36C8F689AFCBA83A1F6014209C0DC00ACD6FF7503654B806F06ACA78400B24DEFE90D6F93FC21F701420860DAFA1F09B40B6804D08E5736479BFFDACFA469BFDD9910FB00A1053069FA3FAD6FFA';
wwv_flow_imp.g_varchar2_table(31) := '6F0F6DBF3D9BB10CD9500410926EA2B2EDABFFB429B2D9C410CB801002B0EFFFD7ADFF6DF476DF7846E006210490284943566B5EFD9B5E21432D037C0BA0EDF4DFE46C6E74EADFF3FD000410320F93946D5FFDCDFBE34D1AE47B191052006DE5A6FB6F3E';
wwv_flow_imp.g_varchar2_table(32) := 'EF80001040939CC8EA18F39E7F9704B1A7CAAE0F05F91640D3DDFF4983660A8E650002C82AB99B34D665FA5F95EF7316E053002ED3FFAA6FB6E0FABE19C81E4093ACCAE418FBEB3E6DA7FF9392C4E5DD009F02E8B2F95737742C033EA382003249EE26CD';
wwv_flow_imp.g_varchar2_table(33) := 'F425005D97390B707989C797007C5CFDEB363AFBBE0F80009A645626C7981B804DEFFD4FEA9AAF47837D09C0D7D5DF961B02183C72C7F1E75E0E1DE283D015E8F22F3FFDD4C36B83E14B31EA9258874F01D83BE65D67013E04E0F3EA6F0BA0EF8F063303';
wwv_flow_imp.g_varchar2_table(34) := '9098C91DDBE45B00F673F45DF6027C08C0E7D51F01AC0F2E04D031D9249EE65B003E6601AE02F07DF54700084062EE7A69530801D84FCFB57D2EC05500BEAFFE08000178493689858410809D306D3F16E22200F35CD74D4D73BCCCA50D7B006C024ACCE5';
wwv_flow_imp.g_varchar2_table(35) := '4E6D0A250097A703BB0AC09EFA7779AA71124404F01919F6003AA59ACC934209C09E05E8FF6EBA21D8550021A6FED5A82100042033831D5B155200F65E40D3A540170184BCFAB307C01E80639AC93D3D9400ECE4AF0834D9106C2B003BF9ABBA58028489';
wwv_flow_imp.g_varchar2_table(36) := '3B960061B8262935840026257F5309B4158039F5B721FA92004B00960049123474A5BE05603F08A4DBAF77CDDF595D1D7765D652A08D00CC2FFDEA0AF463BA6F5DBDBA0E9B0F09200004103A179394EF5300759FD4DE3537A7B66EDAA8EC978EA649A0A9';
wwv_flow_imp.g_varchar2_table(37) := '00ECA97F757B4ED7756975557D70FDFA98A9EB2D41048000922468E84A7D08C0BEE5A7DB5CF7E10CFBCB4393DE1568228049C96FF2AAFB074D9B7EEBD0E68E001040E85C4C52BEAB00EA927FDA83327652D6496096009A247F05D3968EFE7D9725010240';
wwv_flow_imp.g_varchar2_table(38) := '0049123474A52E02A8DBEC6BF2945C9D04CC7EBEFBEA1975E1CC2BA35FE9A5C2CE071E1CFFD9FC5BF5CB595FE8F1210104800042E76292F2BB0AA06BF2EB4EDAFB012E1D6FFA6EBEAB04100002708953B1E7761140DD4E7FD3449CB5466F0A4AEF31541B';
wwv_flow_imp.g_varchar2_table(39) := '8C4DCFA9134FD3E5000240004DE32CABE3DA0A60DA4E7F978EEBFA6FCC0A3E1E9F6EEEDEEB44377FB66EDAA4B66CDC38BAB3D0E5A7EB1D02048000BAC49BF8739A0AA0E94EBF8F0E9B6D6AB2A7D0A5CEB67708100002E81267E2CF692280B63BFDAE9D8E';
wwv_flow_imp.g_varchar2_table(40) := '2100DDC636FB02080001B8C6B5C8F327094027BDFEB9F0C6EBEABD9595756D0F7555AE2A8925806912D07FDBB273A7DAB263C7A859080001884C60D746D55D05A795193AF9EDA48C5D5F139E31DAD4A41DA98EE165A054E403D4DBF4965C975DF7AECD8D';
wwv_flow_imp.g_varchar2_table(41) := '390330DBD8548608802F02758D6D91E799FF3498D9C06A07BEEDED36D74E9A528A9D6CD55D09F3E5259BC9DDB76D73ED62D6E73303C87AF8EA1BAF936E5DA077BCCD561A1AB8DC3CA24509E0DCC1C7776FBEE5D6F3A5052EFD81402802D73EF968CFDE13';
wwv_flow_imp.g_varchar2_table(42) := '272F842ABF2A37CABF0C8400420F23E5974600019436A2F407022D08208016B0381402A5114000A58D28FD81400B0208A0052C0E854069048A12801E9C4B871687A50D12FD81402802BB8E2D45D9A08F520902081526945B2A81E204B07268F1D450A985';
wwv_flow_imp.g_varchar2_table(43) := '52078C7E41C0270104E09326654120230203A596E78F2D1D88D1E4684B0066003186933A4A2050A4002E1D5E3CA286EA991206883E40202881813ABAEBD9A52341EBF8B4F06833808B871717360CD5A9189DA20E08644D0001643D7C341E024E04D606EA';
wwv_flow_imp.g_varchar2_table(44) := 'C09DCF2E2D3B15D2F0E46833006E05361C110EEB3D8158770034E8A8026023B0F7B10D801904626E002200C21102D208445CFF4717001B81D2A28DF6882350B200D80710176E3448188198EBFFE833005D21FB00C2228EE68821107BFD9F44003C102426';
wwv_flow_imp.g_varchar2_table(45) := 'DE6888340291A7FF4904C03E80B4A8A33D5208C4BCFF5FF539EA6DC0AA52960152428E764822107BFD9F6406A02B65162029EC688B080209A6FFC904C0DD001121472304114871F54F2A00960182A28FA6A42590E8EA9F54002C03D2C61CB50B22D04701';
wwv_flow_imp.g_varchar2_table(46) := '68FCCC020405214D49432061F2279D01B0199826DEA85518813E0B805980B060A4397109244EFEE43300660171E38DDA641148B5F36F5248F220903D0C3C1E2C2B30694D040202AEFE226600156A360423041D55C8202024F9450980DB82326293568427';
wwv_flow_imp.g_varchar2_table(47) := '2061EA5FF552C412A06A0C4B81F0C1470D890908BAFA8B9A012081C48149F5E109084B7E9102D08D6226103E16A921320181C92F560048207270525D580242935FB4009040D898A4F448040427BF7801208148414A356108084FFE2C048004C2C426A506';
wwv_flow_imp.g_varchar2_table(48) := '269041F2672300EE10040E568AF746407FD9F793813A1AEBDFF6736DB8A8E7009A74863B044D28714C1202995CF54D36D90980D94092D0A6D2290472BBEA172180F1DE80FE3F43F50C110A81D804724EFC8A55B6330073B047CB0244103BFE7B5B5F0989';
wwv_flow_imp.g_varchar2_table(49) := '5F94006E92013382DE2667A88E9794F4C52C01A60DF6E8ED42A5160643B57FA8D442A8C0A0DC7209E8A41F0ED4E935A59673D9D56F3B1A452C019A74BA5A26208426B4FA798C4E78DDF39C6EE3B98E546F046083AA6608FAF75A0A37B6109829B80694F4';
wwv_flow_imp.g_varchar2_table(50) := 'F3AB241F8DF7A75777FDFF4BBDC2CF1A8FDE0A60169873071FDF5D77CCDC86CD77CE3A97BFA723B0BA76ED625DED7B4F9CBC90AE55726B460072C786964120380104101C311540402E010420776C68190482134000C111530104E412400072C786964120';
wwv_flow_imp.g_varchar2_table(51) := '380104101C311540402E010420776C68190482134000C111530104E412400072C786964120380104101C311540402E010420776C68190482134000C111530104E412400072C786964120380104101C311540402E010420776C68190482134000C1115301';
wwv_flow_imp.g_varchar2_table(52) := '04E412400072C786964120380104101C311540402E010420776C68190482134000C111530104E412400072C786964120380104101C311540402E010420776C68190482134000C111530104E412400072C7869641203881FF03F4E798C46838E8E5000000';
wwv_flow_imp.g_varchar2_table(53) := '0049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18386011941159532)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDDD1AB6DC77D1FF015904007E9BA4857B912316971852B3996A59442DDD636F2435EFB22454DB0C17F44A0';
wwv_flow_imp.g_varchar2_table(2) := '79081804061712E81F11709A26B15FF2DA8704DB6DD3972A378A6C455C4C122CA45B5B01DD6BAE41075AD689B6747A75CE99597BAD59F39B998F5E9C70D79E35F3F9CDDEF3DDB3D6DAE717DEF9EAAFFFDFC97F040810204080C05002BF20000C556F8325';
wwv_flow_imp.g_varchar2_table(3) := '4080000102670202808940800001020406141000062CBA2113204080000101C01C204080000102030A08000316DD9009102040808000600E10204080008101050480018B6EC80408102040400030070810204080C0800202C08045376402040810202000';
wwv_flow_imp.g_varchar2_table(4) := '980304081020406040010160C0A21B3201020408101000CC01020408102030A080003060D10D9900010204080800E60001020408101850400018B0E8864C80000102040400738000010204080C2820000C58744326408000010202803940800001020406';
wwv_flow_imp.g_varchar2_table(5) := '141000062CBA2113204080000101C01C204080000102030A08000316DD9009102040808000600E10204080008101050480018B6EC80408102040400030070810204080C0800202C08045376402040810202000980304081020406040010160C0A21B3201';
wwv_flow_imp.g_varchar2_table(6) := '020408101000CC01020408102030A080003060D10D9900010204080800E60001020408101850400018B0E8864C80000102040400738000010204080C2820000C58744326408000010202803940800001020406141000062CBA2113204080000101C01C20';
wwv_flow_imp.g_varchar2_table(7) := '4080000102030A08000316DD9009102040808000600E10204080008101050480018B6EC80408102040400030070810204080C0800202C08045376402040810202000980304081020406040010160C0A21B3201020408101000CC01020408102030A08000';
wwv_flow_imp.g_varchar2_table(8) := '3060D10D9900010204080800E60001020408101850400018B0E8864C80000102040400738000010204080C2820000C58744326408000010202803940800001020406141000062CBA2113204080000101C01C204080000102030A08000316DD9009102040';
wwv_flow_imp.g_varchar2_table(9) := '808000600E10204080008101050480018B6EC80408102040400030070810204080C0800202C08045376402040810202000980304081020406040010160C0A21B3201020408101000CC01020408102030A080003060D10D9900010204080800E600010204';
wwv_flow_imp.g_varchar2_table(10) := '08101850400018B0E8864C80000102040400738000010204080C2820000C58744326408000010202803940800001020406141000062CBA2113204080000101C01C204080000102030A08000316DD9009102040808000600E10204080008101050480018B';
wwv_flow_imp.g_varchar2_table(11) := '6EC80408102040400030070810204080C0800202C08045376402040810202000980304081020406040010160C0A21B3201020408101000CC01020408102030A080003060D10D9900010204080800E60001020408101850400018B0E8864C800001020404';
wwv_flow_imp.g_varchar2_table(12) := '00738000010204080C2820000C58744326408000010202803940800001020406141000062CBA2113204080000101C01C204080000102030A08000316DD9009102040808000600E10204080008101050480018B6EC80408102040400030070810204080C0';
wwv_flow_imp.g_varchar2_table(13) := '800202C08045376402040810202000980304081020406040010160C0A21B3201020408101000CC01020408102030A080003060D10D9900010204080800E60001020408101850400018B0E8864C80000102040400738000010204080C2820000C58744326';
wwv_flow_imp.g_varchar2_table(14) := '408000010202803940800001020406141000062CBA2113204080000101C01C204080000102030A08000316DD9009102040808000600E10204080008101050480018B6EC80408102040400030070810204080C0800202C080453764020408102020009803';
wwv_flow_imp.g_varchar2_table(15) := '04081020406040010160C0A21B3201020408101000CC01020408102030A080003060D10D9900010204080800E60001020408101850400018B0E8864C80000102040400738000010204080C2820000C587443264080000102028039408000010204061410';
wwv_flow_imp.g_varchar2_table(16) := '00062CBA2113204080000101C01C204080000102030A08000316DD9009102040808000600E10204080008101050480018B6EC80408102040400030070810204080C0800202C08045376402040810202000980304081020406040010160C0A21B32010204';
wwv_flow_imp.g_varchar2_table(17) := '08101000CC01020408102030A080003060D10D9900010204080800E60001020408101850400018B0E8864C800001020404007380C0600277DF3F9DDEB9776FBA7B7A7A36F2274F4EA6274E1E1A4CC17009101000CC01020309CC8BFFAD3B772E1CF153D7';
wwv_flow_imp.g_varchar2_table(18) := 'AE4D8F3CF8C0401A864A606C010160ECFA1BFD4002EFDCFBF9F4F6BD7B578ED86EC04013C25087171000869F02004610C859FC0F0E42C00833C218094C9300601610E85C60C9E22F04743E190C8FC0390101C07420D0B1C0318BBF10D0F1843034020280';
wwv_flow_imp.g_varchar2_table(19) := '3940A07F81358BBF10D0FFFC3042027600CC01021D0A6CB1F80B011D4E0C43226007C01C20D0AFC0968BBF10D0EF3C3132027600CC01021D092C59FC1FBB71E36CE4EFDEBE9D25E0E9802C2607116846400068A6543A4AE06A81A58BFFA7BFF8A5B306DF';
wwv_flow_imp.g_varchar2_table(20) := 'FCDE778500938BC0800202C0804537E4FE048E5DFC0F1242407F73C28808A404048094907F27105C60EDE22F04042FB0EE11282420001482D52C813D04B65AFC85803DAAE51C0462090800B1EAA13704B205B65EFC85806C7A0712E8424000E8A28C0631';
wwv_flow_imp.g_varchar2_table(21) := '9A40A9C55F08186D2619EFC80202C0C8D537F626054A2FFE424093D342A7092C16100016937901817A0277DF3F9D6EDDB993D581F939FFC3A37E592FB8E0A0DB6FBC31FDE8AF5FCB7AF953D7AE4D8F3CF840D6B10E2240A0BE800050BF067A40204B60C9';
wwv_flow_imp.g_varchar2_table(22) := 'E2FFA9CF3E3BDD78FAE9AC76530709012921FF4EA04D0101A0CDBAE9F580027FF9EE3F648D7ACBC5FF704221208BDE41049A1210009A2A97CE8E2A70EBBD3BD3DDD3D3E4F0B7D8F6BFEC24B93F16F4C8030F4C4F7DE25AB2AF0E2040A0AE800050D7DFD9';
wwv_flow_imp.g_varchar2_table(23) := '092405222CFE874E0A01C9723980403302024033A5D2D1110596DCF1FFEC0B5F9E1EBE7EBD28D3CF7EFAD3E9B53FFFB3AC73F8E341594C0E22504D4000A846EFC404AE1688B6F81F7A2B0498B904FA101000FAA8A3517426B064F12F71D35F8AD34D8129';
wwv_flow_imp.g_varchar2_table(24) := '21FF4E20BE800010BF467A38A040CD3BFE73B985805C29C71188292000C4AC8B5E0D2C907BD35F8D6FFEF797253704783260E0096DE861050480B0A5D1B1110572B7FE232CFE87FAE43E19E0A6C01167B43147161000225747DF8612C85DFC4B3EEB7F2C';
wwv_flow_imp.g_varchar2_table(25) := 'B81070AC9CD711A8272000D4B37766021F0AE42EFEF30B3EFFE24BE1E4963C19E06F06842B9F0E0D2A20000C5A78C38E25907BD3DF1ECFFA1F2BB324043CFFD8A3C79EC6EB0810D8484000D8085233048E15C8FDF61FE9BAFF65637553E0B1B3C0EB08EC';
wwv_flow_imp.g_varchar2_table(26) := '2F2000EC6FEE8C04166FFDB7B0F81F06951B02DC14E88D40A0AE800050D7DFD90716C8FDF3BE116FFA4B952DF7A640F703A424FD3B8172020240395B2D13B852A087EBFE970D30F77E00BF0FE04D42A09E800050CFDE990716E8E9BAFFDAFB015C0A18F8';
wwv_flow_imp.g_varchar2_table(27) := '8D60E855050480AAFC4E3EA2C0088BFFA1AE2E058C38C38DB9150101A0954AE9673702B95BFF119FF73FA6087FF19D6F67BDCCA381594C0E22B0998000B019A58608A40546FAF67FD0703F407A5E3882400D0101A086BA730E2930E2E27F2874EEA3819E';
wwv_flow_imp.g_varchar2_table(28) := '0A18F2AD61D0950404804AF04E3B9E40CED67F8B8FFCE55632F77E00970272451D47609D8000B0CECFAB096409E47EFBEFE5BAFF45282E05644D150711D84D4000D88DDA894615C85DFC5BFAB5BF636B991B025C0A3856D8EB08E40B0800F9568E247094';
wwv_flow_imp.g_varchar2_table(29) := '40CED6FF088BFF01CFA580A3A6911711D85C4000D89C5483043E12C8FDF6DFF3D6FF45F321E7D1403F10E49D44A0AC800050D657EB030BE4FED6FF48DFFE0FD3C1530103BF310C3D8C800010A6143AD29B40CEB7FF1117FF259702FCAD80DEDE15C61349';
wwv_flow_imp.g_varchar2_table(30) := '400088540D7DE9462067F19F07FBEC0B5F9E1EBE7EBD9B712F19881B0297683996C0F60202C0F6A65A2430B9F12F6F12E45C0AB00B9067E928024B050480A5628E279010C8FDF63FDA8D7F97B1B921D05B8A401D0101A08EBBB3762CE0DBFFB2E2BA14B0';
wwv_flow_imp.g_varchar2_table(31) := 'CCCBD104B6121000B692D40E81699A72BEFD8F7CE3DF659324E7B7015C0AF01623B0AD8000B0ADA7D60616C859FC671E5BFF1F9F247601067EE3187A350101A01ABD13F7269013007CFBBFBCEA6E08ECED1D613CD1050480E815D2BF260472167FDFFED3';
wwv_flow_imp.g_varchar2_table(32) := 'A5CCB914E0EF04A41D1D4120474000C851720C8184404E00F0ED3F3D8D722E05B81720EDE80802390202408E9263085C2190B3F803DC56C02EC0B69E5A1B53400018B3EE46BDA140CE637F1B9E4E53D334D905300D08AC171000D61B6A616001DFFEEB15';
wwv_flow_imp.g_varchar2_table(33) := 'DF2E403D7B67EE434000E8A38E465149C0B7FF4AF07601EAC13B733702024037A53490BD057CFBDF5BFCE3E7B30B50BF067AD0AE8000D06EEDF4BCB2C0ADF7EE4C774F4F2BF762ECD3BB1760ECFA1BFD3A0101609D9F570F2AE0DB7F9CC2DB0588530B3D';
wwv_flow_imp.g_varchar2_table(34) := '694B400068AB5E7A1B444000085208F702C429849E342720003457321D8E2090BAF9EFB9AF7E6DBAF1D2CB11BADA7C1F5E7FE5EBD35B375FBD721C76019A2FB301541010002AA03B65DB0239DFFEBFF0CDDF9D4E9EF94CDB030DD2FB7B3FFCC1F4FDDFF9';
wwv_flow_imp.g_varchar2_table(35) := 'ED2B7BE35E8020C5D28DA6040480A6CAA5B311047CFBDFBF0A39BB00CF3FF6E8FE1D7346020D0B08000D174FD7F717C8F9F66FFB7FFBBAE4EC023C7972323D71F2D0F627D722814E0504804E0B6B58650452DFFEE7B3FEDA77FEB4CCC9076FD52EC0E013';
wwv_flow_imp.g_varchar2_table(36) := 'C0F0371710003627D560AF02BEFDD7AD6CCE2E809B01EBD6C8D9DB121000DAAA97DE5614C80900BEFD972D506A17C0CD8065FDB5DE978000D0573D8DA6A0406AFBDFB5FF82F81F347DFBDB7F3CDDFCD6EF5F7922BB00E5EBE00C7D0808007DD4D1280A0B';
wwv_flow_imp.g_varchar2_table(37) := 'F8F65F1838B3F99CCB006E06CCC474D8F00202C0F05300408E806FFF394AFB1CE332C03ECECED2BF8000D07F8D8D70A540CEB77FDBFF2B9117BC3C6717C0658005A00E1D56400018B6F4069E2B901300DCFC97ABB9CD71FFEDC57F7F65436E06DCC6592B';
wwv_flow_imp.g_varchar2_table(38) := '7D0B08007DD7D7E83610B0FDBF01E2C64DA42E03CCA7F3CB801BA36BAE3B0101A0BB921AD09602BEFD6FA9B95D5B2E036C67A9A571050480716B6FE41902A900E0DA7F0662A14352BB002E031482D76C3702024037A534901202B6FF4BA86ED366CE2E80';
wwv_flow_imp.g_varchar2_table(39) := 'CB00DB586BA54F0101A0CFBA1AD50602A96FFFF3295AB9F96F5E2CE7FF7EF4877FF0A1CC5B375F3DFBBF7FE9B95F3DFBDFC73FF7DCD9FFDE78E9E50DF4F669227533A0A701F6A983B3B4292000B45937BDDE41201500E685F3575EF9C60E3D39FE14F32F';
wwv_flow_imp.g_varchar2_table(40) := 'E7FDE4AF6E4E87C53EB7A579FBFC9FFFC657C287019701722BEA38021F171000CC0A029708B4BCFD9FF393B9B9858F7C9F83CB00B955741C0101C01C20902590FAF63F371271FB3F6741CC02B8E0A088412067BC2E031C5B71AFEB5DC00E40EF1536BEA3';
wwv_flow_imp.g_varchar2_table(41) := '04520120E2F6FF96DFFA2F438B18025C06386A8A7B118149003009085C20D0DAF6FF1E8BFF81295A08C8D905F03480B739019700CC01024981BBEF9F4EB7EEDCB9F2B848DBFF7B2EFE1143404E0070192039ED1D30A0801D80018B6EC8570BB4B4FD5F63';
wwv_flow_imp.g_varchar2_table(42) := 'F18F18025297010400EF7A027600CC01024981540088B205BE74F17FFC9FFEB3B3B1FFF2BFFDC2D9FF9E7CF29367FF7BEFC73F9EEEFEF8EFCFFEEF37BFF7DDA4CFF903BEF0CDDF9D4E9EF9CCA2D79438381500FC2A6009756DB62E6007A0F50AEAFFE602';
wwv_flow_imp.g_varchar2_table(43) := 'AD5CFF4FFD08CE01665EF8E745FFB0E0A7C0FECFFFFA9F8B824084CB21399701DC0790AABC7F1F4D400018ADE2C67BA5402BD7FF73BFFDCF8BFFBFF8F5FF7054D5738340941D9154207219E0A869E0451D0B08001D17D7D0960BA4B6FFA33CFE975AECE6';
wwv_flow_imp.g_varchar2_table(44) := '917FFA8B5F9A7EF15FFF9BE508E75E911B0222EC02A42E033C7972323D71F2D02A0F2F26D0938000D053358D65B5C0ADF7EE4C774F4F2F6D27C2B7DD9C6FFF5B2CFE0784BFF9933F9A7EF2777F7BA56D0B2EEE0358FDF6D040670202406705359C7502A9';
wwv_flow_imp.g_varchar2_table(45) := 'EBFF116E7ACBF9F6FFEF7EEB3FAE83B8EFD5A910106167C47D009B965C63030808000314D910F3045AB9FE9F0A005B7EFB3FC8CD4F0AFCEFFFFAD15F12BC48B48570E43E80BCF782A3C6101000C6A8B3516608B470FD3F67FB7FEB6FFFB99702220480D4';
wwv_flow_imp.g_varchar2_table(46) := '7D000240C61BC121C3080800C394DA405302A900D0C275EE12DFFE73034084CB00A900E03E80D4BBC0BF8F2420008C546D63BD52A0851B00530B5CC90090BA0C102100A4EE0310007C0810F8484000301B087C2090BA01B08547DDFEE56F7C25FB077F96';
wwv_flow_imp.g_varchar2_table(47) := '16BE8700308FD90F022DADBCE37B1510007AADAC712D12E8E506C052D7FF0F98FFFD3FFFDE95AE114252EA2649F7012C7A6B38B8630101A0E3E21A5ABE40EAFA7F84EDED7934A9C54D0098A6D465120120FF7DE1C8BE050480BEEB6B749902A90010E106';
wwv_flow_imp.g_varchar2_table(48) := 'C07928A9C56DF44B00B351EA4909F70164BE291CD6BD8000D07D890D3047A0851B006B0780D4CF0247D925712360CE8C770C81691200CC0202D334A56E008CF08C7B4E0058F3C77F5213211500A2EC92A402C03C4E3702A6AAEDDF4710100046A8B23126';
wwv_flow_imp.g_varchar2_table(49) := '05520120C2CD6DF320528B5BC90090BA01304A00C8B957C27D00C9B78403061010000628B2215E2D907A0220CAD6764E00988F29711F40EADBFF7CDE28212967A74400F0A940C025007380C094BA01305200C859DC4AEC02A4BEFD3FFAD9CF4DFFEA1BDF';
wwv_flow_imp.g_varchar2_table(50) := '0C339B52374B0A00614AA5231505EC0054C477EA1802A90010696B7B164BDDE53E1FB36508C8F9F6DF9AD1932727D313270FC598807A41A09280005009DE69E308B4F204C079B1D4EF01CCC76EF1B3C0398B7FB4EDFF9C4B251E058CF3FED3937A020240';
wwv_flow_imp.g_varchar2_table(51) := '3D7B670E22900A00519E0038CF95B30BB03604FCCD9FFCD1F493BFFBDB6495A27DFB17009225730081330101C044185EA0952700EE2F54CE2EC0E1354B7603E6DFFCFFFBFFF1FDACC53FE2B7FF9C00301FE351C0E1DFFAC3030800C34F0100AD0680D423';
wwv_flow_imp.g_varchar2_table(52) := '811755760E02F37F8F7CF2973FFCA341F3823FFF372FFAF37F39DFFA0F6D47FCF67FE85B2A200900DEFBA30B0800A3CF80C1C79F7A0430EA37DC43D9722F05942873E4C57F1E6F2A007812A0C4ACD0664B0202404BD5D2D7CD05520120DA23801701D408';
wwv_flow_imp.g_varchar2_table(53) := '01D117FFD9C9A3809BBF5D34D8998000D059410D6799400F01601EF19E21A085C55F0058F63E70F4980202C0987537EA0F045AFB0D80AB0AB747086865F1CF09007E0BC0C7C0E80202C0E83360F0F1F714004AEF04447C1C724D201200067FF31BBEC700';
wwv_flow_imp.g_varchar2_table(54) := 'CD81B1057A0B00876A6EB91BD0D2B7FEF3B33965E0C780C67EEF1BBDDF013007061748FD0850AB8BDFDA2030DFFCF8F8E79E9B6EBCF472B33324F598A400D06C69757C230197003682D44C9B02A900D0DAB6776A4B7CFEF79FFCD5CDB3C3DEBAF9EAD9FF';
wwv_flow_imp.g_varchar2_table(55) := 'CE8BFDE1BF4FFDE657CEFECF93673ED36641CFF55A0068BE840650584000280CACF9D802230580D895D8BE7702C0F6A65AEC4B4000E8AB9E46B35040005808D6D0E1024043C5D2D52A0202401576278D22200044A9C4F6FD1000B637D5625F0202405FF5';
wwv_flow_imp.g_varchar2_table(56) := '349A850202C042B0860E17001A2A96AE56111000AAB03B69148156FF105014BFE8FD48FD3D007F10287A05F5AFA48000505257DBE1050480F0255AD5410160159F17772E2000745E60C3BB5A4000E87B8608007DD7D7E8D6090800EBFCBCBA710101A0F1';
wwv_flow_imp.g_varchar2_table(57) := '0226BA2F00F45D5FA35B272000ACF3F3EAC6050480C60B2800F45D40A32B2A200014E5D578740101207A85D6F5CF0EC03A3FAFEE5B4000E8BBBE4697104805809E7E0A78B4C9907A0C70F6F014C068B3C278CF0B0800E6C3D0027E07A0DFF20B00FDD6D6';
wwv_flow_imp.g_varchar2_table(58) := 'C8B6111000B671D44AA3020240A385CBE8762A00F86B8019880EE95A4000E8BABC06971210005242EDFEBB00D06EEDF47C1F0101601F6767092A2000042DCC06DDBAFDED3F9E6E7EEBF72F6DC90EC006C89A685A400068BA7C3ABF562015009EFBEAD7A6';
wwv_flow_imp.g_varchar2_table(59) := '1B2FBDBCF6345E5F414000A880EE944D0908004D954B67B7161000B6168DD39E0010A7167A12534000885917BDDA494000D809BAC2695201E0C99393E98993872AF4CC2909C410100062D4412F2A09BC73EFE7D3DBF7EE5D7A7697002A156683D30A001B';
wwv_flow_imp.g_varchar2_table(60) := '206AA26B0101A0EBF21A5C4A2015007EE9B95F9D7EE5956FA49AF1EF01055E7FE5EBD35B375FBDB467760002164D977615100076E576B2680277DF3F9D6EDDB97369B704806815CBEF8F00906FE5C83105048031EB6ED41F080800FD4E85540078EADAB5';
wwv_flow_imp.g_varchar2_table(61) := 'E991071FE817C0C8082404040053646881540098717EED3B7F3AB451AB834FFD212001A0D5CAEAF7560202C05692DA695620F507810480364B9B0A00FE10509B75D5EBED040480ED2CB5D4A8402A00F88B80ED1536F533C0F3880480F6EAAAC7DB0A0800';
wwv_flow_imp.g_varchar2_table(62) := 'DB7A6AAD31819C4B00024063459DA629F508E03C229700DAABAB1E6F2B20006CEBA9B586047216FF79387E0BA0A1A27ED0D59C002004B457573DDE564000D8D6536B8D08E42EFEF3703C0AD84851CF753337000801EDD5568FB7131000B6B3D45223024B';
wwv_flow_imp.g_varchar2_table(63) := '167F01A091A2DED7CDD42380F78FCAE58036EBACD7EB040480757E5EDD98C0D2C5FF303C4F02B455E8D41300178D460868ABC67ABB5E4000586FA88546048E5DFCE7E109008D14F9836E1E13005C0E68ABC67ABB5E4000586FA8850604D62CFEF3F03C09';
wwv_flow_imp.g_varchar2_table(64) := 'D040913FE862CE2380578DC64E403BB5D6D3750202C03A3FAF6E4060EDE2DF5B0078FF8D1F4E6FFE976F4DEFBDFEDA74F7F4B4BBA71C96DC0078D9F415021A7863EBE26A01016035A106220B6CB1F8CFE3EBE951C0CBB6C75FF84FBF373DF8F43391CB99';
wwv_flow_imp.g_varchar2_table(65) := 'D5B72D0280CB0159D40E6A5C400068BC80BA7FB9C0568BFF7C865E1E05BC6A711C618C4BDF2F7602968A39BE250101A0A56AE96BB6C0D2C5FF539F7D76FAD15FBF7669FBBD2C8EA99BE37AB8D931F508E063376E4CEFDEBE9D3D9784806C2A0736262000';
wwv_flow_imp.g_varchar2_table(66) := '345630DD4D0B2C5DFC9F7DE1CB678DBEF6E77F7665E33D2C8E230480D41873EB7D7E320801E9F79D23DA131000DAAB991E5F2170CCE2FFF0F5EB672DFEC577BE7DA56D0F4F02A416C7D6434ECEF5FFCFBFF8D2599D7FF6D39F26439F10E0E3A6670101A0';
wwv_flow_imp.g_varchar2_table(67) := 'E7EA0E36B6358BFF4CF5E6F7BE7BE5D6700F37028E1E00E64B3D379E7EFAC377861030D88784E1FE7F02028009D185C0DAC57F46B8FDC61BDDDF07D07B00485DFFBF3F00D809E8E2ED6F10470A080047C279591C812D16FFDC85A0F52DF2DE03406A7CF3';
wwv_flow_imp.g_varchar2_table(68) := 'F5FFC3259FF333D84E409CF7B39EEC272000EC67ED4C0504B65AFC0F5DEBFD3E80D402D972C0C9F905C0C3F5FF8BA6A21050E00DAAC9D0020240E8F2E8DC55025B2FFE23DC07D0730048DD00383FFEF7E92F7EE9CA379510E0336724010160A46A7734D6';
wwv_flow_imp.g_varchar2_table(69) := '128BFF08F701F41C008EB9FE6F27A0A30F0543592C20002C26F382DA02A516FF11EE03E83900A4C676D9F57F21A0F63BDAF96B090800B5E49DF72881928BFF08F701A416C956EF01587BFD5F0838EAEDE8458D0B08008D1770A4EEEFB1F8E7DC07D0F20F';
wwv_flow_imp.g_varchar2_table(70) := '02F51A00B6B8FE2F048CF46962ACB38000601E3423F097EFFE43765F976CF7DEDF68EA07815AFEBB00A306808B9EFFCF9D4C4B6F0C7CFEB147739B761C81AA020240557E27CF15B8F5DE9DB3BF5D9FF3DF9AC57F6E3FE703BFD5ADF25E03406A5C6B0240';
wwv_flow_imp.g_varchar2_table(71) := 'EE9C38CCCD471E78607AEA13D772A6AA630854151000AAF23B798EC03BF77E3EBD7DEF5ECEA1D3DAC5FF70925E7F0F20B550B6186C4A5CFF5F7B39E0C99393E9899387B2E6AC8308D41210006AC93B6F96408DC57FEE58AF97017A0C00A5AEFF0B01596F';
wwv_flow_imp.g_varchar2_table(72) := '5107352C2000345CBCDEBB5E6BF11700DA9A59A950B376FBFF7E8D9C4B4487D7F833C26DCDA5D17A2B008C56F186C69B7BD3DF56DBFEE769723EE45B7C1A20B558B6760960AFED7F21A0A10F0E5DCD161000B2A91CB8A740EEB7FFADBFDD9D1F638F9701';
wwv_flow_imp.g_varchar2_table(73) := '7A0B007B6EFFDF3FFF537F3DF270BC9B02F7FCE470AE250202C0122DC7EE221061F19F079ADA0568F171C0DE02406A3C2503E23C477243804B01BB7C7438C9420101602198C3CB0BE40480D21FEC3901603EA6B5CB00A905B3A54B00B5B6FFEF7F07A476';
wwv_flow_imp.g_varchar2_table(74) := '8AE6E3ED0294FFDC7086E50202C07233AF282890B3F8E7FC55B7ADBA98FA706F6D17A0A7005073FBFF9810601760AB77A576B6121000B692D4CE26023937FE95B8E9EFB2CEA72E03CCAF6BE95B734F012035963D76890EF326679ED805D8E42342231B0A';
wwv_flow_imp.g_varchar2_table(75) := '08001B626A6A9D40CEB7FF3D3FD47BBC0C905A345B0933A96FFF73ED3EFFE24BEB26E4C257A7768BE6E6EC022C447578510101A028AFC69708E47CFBDFFB437DEE7FEA83BDA5CB00A30480BD83626E58B40BB0E413C1B1A5050480D2C2DACF12C8F94B7F';
wwv_flow_imp.g_varchar2_table(76) := '353ED4733FD85BF9E6DC4B00488DA3D65C498545BB00591F070EDA494000D809DA69AE16C8D9FEAFF1EDFFD0EB5EFE36406AE16C21C844DCFE3F3FBB5373C52E804FC328020240944A0CDE8FD4F67FAD6F7487B2A4BED9B57219608400507BAEA47E1B40';
wwv_flow_imp.g_varchar2_table(77) := '0018FCC32ED0F0058040C518B92BA900B0E79DFF17D521E72EEF167E13A08700901A43ED00903357DC0C38F2A75D9CB10B00716A316C4FA26FFFE75E0678EEAB5F9B6EBCF472E83AA616CFE89700A26FFFE7EE180900A1DF26C3744E0018A6D471077AEB';
wwv_flow_imp.g_varchar2_table(78) := 'BD3BD3DDD3D34B3B58FB1B5DEE87FA7C5CF405B4F50090EA7F2B73C56580B89F4723F54C0018A9DA41C79ADAFE8FF2A19EB3B51BFD32406A018D1C6072BEFDB734579E7FECD1A0EF48DD1A45400018A5D241C799F3F85FCDBBFFEF676BFD66C0960340AA';
wwv_flow_imp.g_varchar2_table(79) := 'EF5116FFDC4B462E0304FD501AA85B02C040C58E38D4D4F5FF681FEAADEF02A416D1A83B002D7DFBCFBD64240044FC441AAB4F02C058F50E37DAD602C00CD8F22E40CF0120D24ED13C4F528F033E7972323D71F250B8F7A40E8D2320008C53EB90236D31';
wwv_flow_imp.g_varchar2_table(80) := '00B4BC0BD06A0048F53BDA4E910010F2E346A7EE1310004C89AA02A927006A3FFF7F194EEAD7DEA2FE30506A218D78092067FB3FDAB7FF79DEA482A22701AA7EF438F9344D0280695055A0D50090DADE9D51232EA62D0680549F237EFB1700AA7EAC3879';
wwv_flow_imp.g_varchar2_table(81) := 'A680009009E5B03202A94700237EB33B48A4760122FE30506A318D165A5AFDF62F0094F9BCD0EAB60202C0B69E5A5B28D0720048DD0C187117A0B50090EA6FD46FFFB921D16F012CFCC070F8A60202C0A69C1A5B2AD07200485DE39D2DA2ED02A416D448';
wwv_flow_imp.g_varchar2_table(82) := '3B002D7FFB1700967E1238BE8680005043DD393F14683900CC83686D17A0A50090EA6BF46FFFF3FC485D26B203E0C3B0A680005053DFB9A7D603406BBB00A94535CA0E400FDFFE05001F70D1050480E815EABC7FAD0780DC5D80287F23A0950090EA670B';
wwv_flow_imp.g_varchar2_table(83) := 'DFFE0580CE3FBC3A189E00D041115B1E420F0120671720CAEF02A416D6083B0039DFFE058096DFF5FA1E45400088FDECD9400000100E49444154528941FBD14300686917207A00E869F1B70330E8875A43C316001A2A568F5DED2500B4B20BD0430088FA';
wwv_flow_imp.g_varchar2_table(84) := 'EB9017BD3FDD04D8E3A7563F631200FAA9659323E92500B4B20B103900F4F6EDDF0E40931F4943755A0018AADCF106DB5300C8F9C0AF7D2F40E40090EADBEC1BF99721ED00C4FB7CD1A3AB05040033A4AA406F0120E76F04D47C2220B5C8D6BA09B0C76F';
wwv_flow_imp.g_varchar2_table(85) := 'FF3981D0EF0054FDF819FEE402C0F053A02E406F0120F75240AD85366A0048F5EBB11B37A64F7FF14B7527EB1167770FC011685EB29B8000B01BB5135D24D06300C8B921B0D64F04A716DA1AC1A4D76FFF76007CE645171000A257A8F3FEF51800727701';
wwv_flow_imp.g_varchar2_table(86) := '6A5C0A881800527D6AE5997FF70074FE61D5E1F004800E8BDAD2907A0D0039BB00356E084C2DB67BEF00E47CFB6FEDC6BFF3EF3F97005AFA341AAFAF02C078350F35E25E03C08C9C7343E0DE97022205809CC5BFE56FFF2E0184FAA8D1990B040400D3A2';
wwv_flow_imp.g_varchar2_table(87) := 'AA40CF0120E2A5802801E0DE0F7F307DFF777E3B39F75AFEF62F0024CBEB80CA020240E5028C7EFADE0340B44B015102C0EBAF7C7D7AEBE6AB574EFFD6BFFD0B00A37FBAC51FBF0010BF465DF7B0F70090BB0BB0D7A58008016084ADFFC39BD63D005D7F';
wwv_flow_imp.g_varchar2_table(88) := '7C353F3801A0F912B63D80110240CE2EC05CC53D9E0AA81D0046D9FA1700DAFE5C1AA5F702C028950E3ACE110240CECD807379F6782AA07600C8D9FA9F2D7AD8FE770920E8878E6E7D282000980C55057A0F00B98BFFA108A52F05D40C00395BFFE72763';
wwv_flow_imp.g_varchar2_table(89) := '0F21C02580AA1F2F4E9E1010004C91AA023D0780A58BFFA110252F05D40A00B95BFFF74FC6D643800050F5E3C5C905007320B240AF01E0CDEF7D777AF7F6EDA3E84B5E0AA8150072B7FE2F026BF5EF00B80470D4F4F7A21D05EC00EC88ED541F17E82D00';
wwv_flow_imp.g_varchar2_table(90) := 'CC37FCBDF583D78F5EFC4B5F0AA81100966EFD5FF63E79F6852F4F0F5FBFDED4DBC80E4053E51AAEB302C070258F35E09E0240EEDDFEB91528713FC0DE0160ABC5FF60D6DA2501012077B63BAE8680005043DD393F14E825002CBDDEFFC8030F4C774F4F';
wwv_flow_imp.g_varchar2_table(91) := '933361EBFB01F60C00C75EF74FA1B4140204805435FD7B4D0101A0A6BE734F3D04806316FFA73E716DBAF5DE9D6408D8FA7E803D0340EA5CF3F49F83D06CF1CEBD9F4F6FDFBB97FD8E6825040800D9257560050101A002BA537E24D07A0058BAF83F7972';
wwv_flow_imp.g_varchar2_table(92) := '323D71F2D019C0DDF74FA75B77EE24A7C3962120B5286FF5D700736FFA7BFEB1473F1C7F8F214000484E6F07541410002AE23BF5D4F40EC0D23BFDCF2FFE87DAE72E7A5BDD0FB04700C8BDEEBFC6E3E017FD090101C0A75C64010120727506E85B8B3B00';
wwv_flow_imp.g_varchar2_table(93) := 'C7DCE9FFD4B56BD3230F3E706145F70C01A503C09AC57F69283A8F19F509010160800FB186872800345CBC1EBADE5A0038E64EFFAB16FF430D73EE07988F5D7B5360C900B0C5E27FF0C8BD3C72FE3D10F1BE0001A0874FA97EC72000F45BDB2646D65200';
wwv_flow_imp.g_varchar2_table(94) := '587ABDFF70835B4E21962C786B4240C900906AFBE070FEBA7FCA2637181DDA89160204805485FD7B4D0101A0A6BE7337730F40C9C57FE9D6F79A9B02538BF4B13701E6DEF497B31B72FFDB22F71249C4102000F8908B2C200044AECE007D6B610760E9E2';
wwv_flow_imp.g_varchar2_table(95) := '7FD1CD6DB9A5CC5DEC8EBD29B04400D872EBFF32A75C9768214000C89DF98EAB212000D45077CE0F05A207802DEEF45F5AEEDC6DEF6342C0D601608FC57FE90EC9E1F8084F0808004B67BFE3F7141000F6D476AE8F09440D005BDFE9BFB4F42997437BF3';
wwv_flow_imp.g_varchar2_table(96) := 'E5804FFDE657A693673E93758AAD02C0FC2B7F3FFAC33F98DEBAF96AF2BC4BEE854835B67427606EAFE613020240AAA2FEBDA680005053DFB943DE0350EA4EFF25E55E7253E0DCEEBC1B30FF77EDB3CF5E1906D6048079D19FFFCB5DF80FE35D72D35F8E';
wwv_flow_imp.g_varchar2_table(97) := 'D1529BB9CD5A37070A003915754C2D0101A096BCF39E09A4BEE97EFEC59776955A7ABD7FCB6FB7F70FF4986FBBBB62659C6CCDFD10A9E6732F951CDAA9110204805415FD7B4D0101A0A6BE73870A009116FFC3D4683904945CFC8FF5D93B0408003EE422';
wwv_flow_imp.g_varchar2_table(98) := '0B080091AB3340DFA2EC002C5DFCF758DC8E5DE4224C9BC83E7B86000120C26CD487CB04040073A3AA40840050E34EFFA5E82DED04ECB9F81F1B92F67A424000583AD31DBFA78000B0A7B6737D4CA06600A87DA7FFD2E9D04208A8B1F81F1B02E6D7957E';
wwv_flow_imp.g_varchar2_table(99) := '424000583ACB1DBFA78000B0A7B6738509004BEFF49F6FF67BE2E4E4D23FE8B35769A38680283ED19E101000F67A6738CF310202C0316A5EB399408D1D80A5D7FB4BDEE97F2CE41C04EEBEFFFE74F7F4F4D82636795D9485FFFEC14479424000D8649A69';
wwv_flow_imp.g_varchar2_table(100) := 'A4908000500856B379027B0780A58B7FCD2DED3CC1693A8481F9F8D281605EF0E7FFE6DD90F9BFCBFEC4716EDF4B1EB774B7A4C4CD810240C90A6B7BAD8000B056D0EB5709EC19007A5CFC97E2A7BCB7FED19EA5FDDBFAF8DA214000D8BAA2DADB524000';
wwv_flow_imp.g_varchar2_table(101) := 'D852535B8B05520BD2563F04D4C29DFE8BF18E7841CABBB70030132D0D015B3E2120001C3149BD6437010160376A27BA4820B520AD0D00ADDDE95F7A96A4BC7B0C00C78480F9355B3C212000949ED1DA5F232000ACD1F3DAD502A905694D0068F54EFFD5';
wwv_flow_imp.g_varchar2_table(102) := 'A8573490F2EE3500CC24359E1010004ACE666DAF151000D60A7AFD2A81D482746C00587ABD3FE29DFEAB602F7971CABBE7007020D9F3090101A0C42CD6E6560202C05692DA394A20B5202D0D00C76CF9B770A7FF51B817BC28E53D420038E692C0B14F08';
wwv_flow_imp.g_varchar2_table(103) := '08005BCD5CED941010004AA86A335B20B520E506806316FEB993232DFEF37853DEA304806342C0FC9AA5414000C8FE287060050101A002BA537E24905A902E0B00F3823FFFF7D60F5E3FFBDF776FDF5ECC3ADAE22F007C7C8A2C7D42E0D0C2FCA4C03FF9';
wwv_flow_imp.g_varchar2_table(104) := 'C51B67FFEFC38F3F3E3D7CFDFA85F34F0058FCB6F4821D0504801DB19DEAE302A90050CAECA96BD742FF884DA971A7BC47DA0138181F1B02B6A8D188DE5BB869631B0101601B47AD1C29905A908E6CF6D29745FDE9DAADC779597B29EF5117A4639E10D8';
wwv_flow_imp.g_varchar2_table(105) := 'A266A37A6F61A78DF50202C07A432DAC10482D482B9AFED84B47B9D3FF2AB394F7E80BD2DEBB01A37B6FF9FED6D672010160B999576C28905A90B63AD588D7FB2FB24B795B9096FF72E09A39CA7B8D9ED7AE151000D60A7AFD2A81D482B4AAF1F98FD504';
wwv_flow_imp.g_varchar2_table(106) := 'F933BE6BC7B1D5EB53DE16A47F949E2F09FCECF4747AFBDEBDADE82F6C8777515E8D2704040053A4AAC0D21F65C9EDAC85FF62A9ABBCED927CDC6CBE2430FF572208F0CE7D373BAE948000504A56BB59025BDE7C75FE4FD546FE33B55930850EBACADBB7';
wwv_flow_imp.g_varchar2_table(107) := 'D1CBD14B0401DE8526B966B30504806C2A079614587AF3D561B19FFBD4C2DFA62F69774CDBE7BDED962C133C5C1EF8C74B05EF9FBDF8EEE9697623BCB3A91C58584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080';
wwv_flow_imp.g_varchar2_table(108) := '000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480';
wwv_flow_imp.g_varchar2_table(109) := 'C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000';
wwv_flow_imp.g_varchar2_table(110) := '010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858';
wwv_flow_imp.g_varchar2_table(111) := '157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020';
wwv_flow_imp.g_varchar2_table(112) := '105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC';
wwv_flow_imp.g_varchar2_table(113) := '790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050';
wwv_flow_imp.g_varchar2_table(114) := '584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127';
wwv_flow_imp.g_varchar2_table(115) := '020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A2740800001021105';
wwv_flow_imp.g_varchar2_table(116) := '04808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A2740';
wwv_flow_imp.g_varchar2_table(117) := '80000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D224080000102850504';
wwv_flow_imp.g_varchar2_table(118) := '80C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D224080';
wwv_flow_imp.g_varchar2_table(119) := '00010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC7902040810201051400088';
wwv_flow_imp.g_varchar2_table(120) := '58157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC7902040810';
wwv_flow_imp.g_varchar2_table(121) := '20105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280C';
wwv_flow_imp.g_varchar2_table(122) := 'AC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D1270204081020';
wwv_flow_imp.g_varchar2_table(123) := '50584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D127020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D1';
wwv_flow_imp.g_varchar2_table(124) := '27020408102050584000280CAC790204081020105140008858157D22408000010285050480C2C09A274080000102110504808855D12702040810205058E0FF016D04294BE3D7676D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(18386307184159454)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18377727204159722)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>44869208616559
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18378083678159714)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>44869208616931
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18378305043159712)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>44869208616978
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18378699239159711)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>44869208617043
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18378939643159710)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>44869208617136
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18379296506159708)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>44869208617207
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18379592641159707)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>44869208617285
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18379707912159706)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>44869208617364
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18380099421159704)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>44869208617443
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18380368487159703)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>44869208617550
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18380621433159701)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>44869208617643
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18380936440159700)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>44869208617712
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18381214544159698)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>44869208617779
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(18381573043159697)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>44869208617857
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(18387516213159450)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>44869208630727
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items/app_league
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(18812919816418840)
,p_name=>'APP_LEAGUE'
,p_protection_level=>'I'
,p_version_scn=>44875975590918
);
end;
/
prompt --application/shared_components/logic/application_items/app_season
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(18813189537415273)
,p_name=>'APP_SEASON'
,p_protection_level=>'I'
,p_version_scn=>44875975784675
);
end;
/
prompt --application/shared_components/logic/application_computations/app_league
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(18813568606412906)
,p_computation_sequence=>10
,p_computation_item=>'APP_LEAGUE'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'22'
,p_version_scn=>44875975916453
);
end;
/
prompt --application/shared_components/logic/application_computations/app_season
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(18813764416411331)
,p_computation_sequence=>10
,p_computation_item=>'APP_SEASON'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'2025'
,p_version_scn=>44875976024115
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(18387883533159444)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(18382489783159682)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18382654542159680)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(18383335167159660)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(18407009170412284)
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>69
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(18407009170412284)
,p_theme_id=>42
,p_name=>'Redwood Light (23ai Demo)'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":[],"vars":{},"customCSS":".sticky_footer {\n  position: fixed;\n  bottom: 0;\n  left: 0;\n  //width: 100%;\n  z-index: 1000;           /* sit on top of other content */\n  background: white;       /* match your theme */\n  box-shadow: 0 -2'
||'px 5px rgba(0,0,0,0.1);\n}\n\n/* Floating Action Button */\n.fab_button {\n  position: absolute;\n  bottom: 1.5rem;\n  right: 1.5rem;\n  z-index: 2000;\n}","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#18407009170412284.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A0D0A2E737469636B795F666F6F746572207B0D0A2020706F736974696F6E3A20';
wwv_flow_imp.g_varchar2_table(2) := '66697865643B0D0A2020626F74746F6D3A20303B0D0A20206C6566743A20303B0D0A20202F2F77696474683A20313030253B0D0A20207A2D696E6465783A20313030303B20202020202020202020202F2A20736974206F6E20746F70206F66206F746865';
wwv_flow_imp.g_varchar2_table(3) := '7220636F6E74656E74202A2F0D0A20206261636B67726F756E643A2077686974653B202020202020202F2A206D6174636820796F7572207468656D65202A2F0D0A2020626F782D736861646F773A2030202D32707820357078207267626128302C302C30';
wwv_flow_imp.g_varchar2_table(4) := '2C302E31293B0D0A7D0D0A0D0A2F2A20466C6F6174696E6720416374696F6E20427574746F6E202A2F0D0A2E6661625F627574746F6E207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020626F74746F6D3A20312E3572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(5) := '202072696768743A20312E3572656D3B0D0A20207A2D696E6465783A20323030303B0D0A7D';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(18407401321412252)
,p_theme_id=>42
,p_file_name=>'18407009170412284.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(18381801117159694)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>44869208617979
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(18382166104159689)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>44869208618250
);
end;
/
prompt --application/shared_components/navigation/search_config/demo_search_conversations
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(18827327474567040)
,p_label=>'demo_search_conversations'
,p_static_id=>'demo_search_conversations'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_CHAT_CONVERSATION'
,p_oratext_index_column_name=>'MESSAGE_EMBEDDING'
,p_vector_provider_id =>wwv_flow_imp.id(18825442196660356)
,p_vector_search_type=>'APPROX'
,p_vector_distance_metric=>'COSINE'
,p_target_accuracy=>90
,p_vector_maximum_distance=>.75
,p_return_max_results=>5
,p_pk_column_name=>'CHAT_CONVERSATION_ID'
,p_title_column_name=>'MESSAGE_TS'
,p_description_column_name=>'MESSAGE_CONTENT'
,p_icon_source_type=>'INITIALS'
,p_version_scn=>44876566509771
);
end;
/
prompt --application/shared_components/navigation/search_config/demo_search_conversations_openai
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(19008409450643606)
,p_label=>'demo_search_conversations_openai'
,p_static_id=>'demo_search_conversations_openai'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_CHAT_CONVERSATION'
,p_oratext_index_column_name=>'MESSAGE_EMBEDDING'
,p_vector_provider_id =>wwv_flow_imp.id(19006421810690673)
,p_vector_search_type=>'EXACT'
,p_vector_distance_metric=>'COSINE'
,p_return_max_results=>10
,p_no_results_found_message=>'No conversations found'
,p_pk_column_name=>'CHAT_CONVERSATION_ID'
,p_title_column_name=>'MESSAGE_TS'
,p_description_column_name=>'MESSAGE_CONTENT'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-comment'
,p_version_scn=>44888855626522
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Chatbot - More Advanced'
,p_alias=>'HOME'
,p_step_title=>'Viscosity 23ai Demo'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function submit_prompt(){',
'  let chat_history_id = apex.item(''P1_CHAT_HISTORY_ID'').getValue(),',
'      chat_message = apex.item(''P1_PROMPT_MESSAGE'').getValue(),',
'      lSpinner$;',
'',
'  lSpinner$ = apex.util.showSpinner( $( "#prompt" ) );',
'  apex.item(''P1_PROMPT_MESSAGE'').disable();',
'  apex.item(''submit'').disable();',
'',
'  apex.server.process(''submit_prompt'',{ x01: chat_history_id, x02: chat_message})',
'  .then(res => {',
'    if(res.chat_history_id){',
'      apex.item(''P1_CHAT_HISTORY_ID'').setValue(res.chat_history_id);',
'    }',
'    apex.item(''P1_PROMPT_MESSAGE'').setValue('''');',
'    apex.region(''chat_conversation'').refresh();',
'    ',
'    return apex.server.process(''generate'', { x01: res.chat_history_id, x02: chat_message });',
'  })',
'  .then(res => {',
'    if(res.chat_history_id){',
'      apex.item(''P1_CHAT_HISTORY_ID'').setValue(res.chat_history_id);',
'    }',
'    ',
'    apex.region(''chat_conversation'').refresh();',
'    apex.item(''P1_PROMPT_MESSAGE'').setValue('''');',
'',
'    apex.item(''P1_PROMPT_MESSAGE'').enable();',
'    apex.item(''submit'').enable();',
'    lSpinner$.remove();',
'  });',
'}',
'',
'function select_chat_history(chat_history_id){',
'  apex.item(''P1_CHAT_HISTORY_ID'').setValue(chat_history_id);',
'  apex.region(''chat_conversation'').refresh();',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18411987369322314)
,p_plug_name=>'Chat'
,p_region_name=>'ai-agent'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21841409830165339)
,p_name=>'P1_CHAT_HISTORY_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19440412095240433)
,p_name=>'On Page Load'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19440589760240434)
,p_event_id=>wwv_flow_imp.id(19440412095240433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_AI_ASSISTANT'
,p_attribute_01=>'INLINE'
,p_attribute_03=>'#ai-agent'
,p_ai_config_id=>wwv_flow_imp.id(18418728954246225)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18411240840322307)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Selected Chat History'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P1_CHAT_HISTORY_ID'
,p_internal_uid=>18411240840322307
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18852246289309423)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submit_prompt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_chat_history_id NUMBER := APEX_APPLICATION.G_X01;',
'  l_chat_conversation_id NUMBER; ',
'  l_chat_message_content CLOB := APEX_APPLICATION.G_X02;',
'  l_chat_ts TIMESTAMP := SYSTIMESTAMP;',
'  l_chat_conversation APEX_AI.T_CHAT_MESSAGES;',
'  l_ai_response CLOB;',
'  l_idx PLS_INTEGER := 0;',
'BEGIN',
'  IF l_chat_history_id IS NULL THEN',
'    INSERT INTO demo_chat_history(',
'      chat_date,',
'      username',
'    )',
'    VALUES(',
'      l_chat_ts,',
'      :APP_USER',
'    )',
'    RETURNING chat_history_id INTO l_chat_history_id;',
'  END IF;',
'  ',
'-- Log user message',
'  INSERT INTO demo_chat_conversation(',
'    chat_history_id,',
'    message_ts,',
'    message_content,',
'    message_role,',
'    message_username,',
'    message_embedding',
'  )',
'  VALUES(',
'    l_chat_history_id,',
'    l_chat_ts,',
'    l_chat_message_content,',
'    ''USER'',',
'    :APP_USER,',
'    --TO_VECTOR(VECTOR_EMBEDDING(ALL_MINILM_L12_V2 USING l_chat_message_content as data))',
'    APEX_AI.GET_VECTOR_EMBEDDINGS(p_value=>l_chat_message_content, p_service_static_id => ''demo_openai_text_embedding_3_large'')',
'  )',
'  RETURNING chat_conversation_id INTO l_chat_conversation_id;',
'  ',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''success'', TRUE);',
'  APEX_JSON.WRITE(''chat_history_id'', l_chat_history_id);',
'  APEX_JSON.WRITE(''chat_conversation_id'', l_chat_conversation_id);',
'  APEX_JSON.CLOSE_ALL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>18852246289309423
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21842527284165350)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_chat_history_id NUMBER := APEX_APPLICATION.G_X01;',
'  l_chat_message_content CLOB := APEX_APPLICATION.G_X02;',
'  l_chat_ts TIMESTAMP := SYSTIMESTAMP;',
'  l_chat_conversation APEX_AI.T_CHAT_MESSAGES;',
'  l_ai_response CLOB;',
'  l_idx PLS_INTEGER := 0;',
'BEGIN',
'  IF l_chat_history_id IS NOT NULL THEN ',
'    l_chat_conversation := APEX_AI.T_CHAT_MESSAGES();',
'     FOR r IN (',
'      SELECT LOWER(message_role) AS message_role',
'            ,message_content',
'        FROM demo_chat_conversation',
'       WHERE chat_history_id = l_chat_history_id',
'    )',
'    LOOP',
'      l_idx := l_idx + 1;',
'      l_chat_conversation(l_idx).chat_role := r.message_role;',
'      l_chat_conversation(l_idx).message   := r.message_content;',
'    END LOOP;',
'  END IF;',
'  ',
'  l_ai_response := APEX_AI.CHAT(',
'                     p_config_static_id => ''gold-cup-2025-config''',
'                    ,p_prompt => l_chat_message_content',
'                    ,p_messages => l_chat_conversation',
'                  );',
'  ',
'  -- IF l_chat_history_id IS NULL THEN',
'  --   INSERT INTO demo_chat_history(',
'  --     chat_date,',
'  --     username',
'  --   )',
'  --   VALUES(',
'  --     l_chat_ts,',
'  --     :APP_USER',
'  --   )',
'  --   RETURNING chat_history_id INTO l_chat_history_id;',
'  -- END IF;',
'',
'  -- Log user message',
'  INSERT INTO demo_chat_conversation(',
'    chat_history_id,',
'    message_ts,',
'    message_content,',
'    message_role,',
'    message_username,',
'    message_embedding',
'  )',
'  VALUES(',
'    l_chat_history_id,',
'    l_chat_ts,',
'    l_ai_response,',
'    ''ASSISTANT'',',
'    :APP_USER,',
'    -- TO_VECTOR(VECTOR_EMBEDDING(ALL_MINILM_L12_V2 USING l_ai_response as data))',
'    APEX_AI.GET_VECTOR_EMBEDDINGS(p_value=>l_chat_message_content, p_service_static_id =>''demo_openai_text_embedding_3_large'')',
'  );',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''success'', TRUE);',
'  APEX_JSON.WRITE(''chat_history_id'', l_chat_history_id);',
'  APEX_JSON.CLOSE_ALL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>21842527284165350
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Generate Text - Transation'
,p_alias=>'GENERATE-TEXT-TRANSLATION'
,p_step_title=>'Generate Text - Translation'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function submit_prompt(){',
'  let chat_history_id = apex.item(''P1_CHAT_HISTORY_ID'').getValue(),',
'      chat_message = apex.item(''P1_PROMPT_MESSAGE'').getValue();',
'',
'  apex.server.process(''submit_prompt'',{ x01: chat_history_id, x02: chat_message})',
'  .then(res => {',
'    apex.region(''chat_conversation'').refresh();',
'    apex.item(''P1_PROMPT_MESSAGE'').setValue('''');',
'  })',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40262675251352032)
,p_plug_name=>'Translation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18423479112186606)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(40262675251352032)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'fab_button'
,p_icon_css_classes=>'fa-send-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36835170594508891)
,p_name=>'P2_AI_RESPONSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40262675251352032)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_MARKDOWN_EDITOR'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'syntax_highlighting', 'Y',
  'toolbar', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40265578896351925)
,p_name=>'P2_CHAT_HISTORY_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40266083096351952)
,p_name=>'P2_PROMPT_MESSAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40262675251352032)
,p_prompt=>'What would you like to say ? ...'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(18424917726186578)
,p_computation_sequence=>10
,p_computation_item=>'P2_CHAT_HISTORY_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(chat_history_id)',
'  FROM demo_chat_history',
' ORDER BY chat_date DESC'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18425691123186573)
,p_name=>'On SUBMIT - Click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18423479112186606)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18427103506186562)
,p_event_id=>wwv_flow_imp.id(18425691123186573)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_GENERATE_TEXT_AI'
,p_attribute_01=>'ITEM'
,p_attribute_02=>'P2_PROMPT_MESSAGE'
,p_attribute_04=>'ITEM'
,p_attribute_05=>'P2_AI_RESPONSE'
,p_attribute_07=>'N'
,p_wait_for_result=>'Y'
,p_ai_config_id=>wwv_flow_imp.id(19708547714843143)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18426650350186564)
,p_event_id=>wwv_flow_imp.id(18425691123186573)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_PROMPT_MESSAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18425296606186577)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submit_prompt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_chat_history_id NUMBER := APEX_APPLICATION.G_X01;',
'  l_chat_message_content VARCHAR2(4000) := APEX_APPLICATION.G_X02;',
'  l_chat_ts TIMESTAMP := SYSTIMESTAMP;',
'BEGIN',
'  IF l_chat_history_id IS NULL THEN',
'    INSERT INTO demo_chat_history(',
'      chat_date,',
'      username',
'    )',
'    VALUES(',
'      l_chat_ts,',
'      :APP_USER',
'    )',
'    RETURNING chat_history_id INTO l_chat_history_id;',
'  END IF;',
'',
'  INSERT INTO demo_chat_conversation(',
'    chat_history_id,',
'    message_ts,',
'    message_content,',
'    message_role,',
'    message_username',
'  )',
'  VALUES(',
'    l_chat_history_id,',
'    l_chat_ts,',
'    l_chat_message_content,',
'    ''USER'',',
'    :APP_USER',
'  );',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''success'', TRUE);',
'  APEX_JSON.CLOSE_ALL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>18425296606186577
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Chatbot - More Advanced'
,p_alias=>'CHATBOT-MORE-ADVANCED'
,p_step_title=>'Chatbot - More Advanced'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function submit_prompt(){',
'  let chat_history_id = apex.item(''P3_CHAT_HISTORY_ID'').getValue(),',
'      chat_message = apex.item(''P3_PROMPT_MESSAGE'').getValue(),',
'      lSpinner$;',
'',
'  lSpinner$ = apex.util.showSpinner( $( "#prompt" ) );',
'  apex.item(''P3_PROMPT_MESSAGE'').disable();',
'  apex.item(''submit'').disable();',
'',
'  apex.server.process(''submit_prompt'',{ x01: chat_history_id, x02: chat_message})',
'  .then(res => {',
'    if(res.chat_history_id){',
'      apex.item(''P3_CHAT_HISTORY_ID'').setValue(res.chat_history_id);',
'    }',
'    apex.item(''P3_PROMPT_MESSAGE'').setValue('''');',
'    apex.region(''chat_conversation'').refresh();',
'    apex.region(''conversations'').refresh();',
'    ',
'    return apex.server.process(''generate'', { x01: res.chat_history_id, x02: chat_message });',
'  })',
'  .then(res => {',
'    if(res.chat_history_id){',
'      apex.item(''P3_CHAT_HISTORY_ID'').setValue(res.chat_history_id);',
'    }',
'    ',
'    apex.region(''chat_conversation'').refresh();',
'    apex.region(''conversations'').refresh();',
'    apex.item(''P3_PROMPT_MESSAGE'').setValue('''');',
'    apex.item(''P3_PROMPT_MESSAGE'').enable();',
'    apex.item(''submit'').enable();',
'    lSpinner$.remove();',
'  });',
'}',
'',
'function select_chat_history(chat_history_id){',
'  apex.item(''P3_CHAT_HISTORY_ID'').setValue(chat_history_id);',
'  apex.region(''chat_conversation'').refresh();',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19441149825240440)
,p_plug_name=>'Conversations History'
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>4
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39053137804530861)
,p_plug_name=>'Chats History - Cards'
,p_region_name=>'conversations'
,p_parent_plug_id=>wwv_flow_imp.id(19441149825240440)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT h.chat_history_id',
'      ,NVL((',
'        SELECT MAX(c.message_ts)',
'          FROM demo_chat_conversation c ',
'         WHERE c.chat_history_id = h.chat_history_id',
'      ), h.chat_date) AS latest_msg_ts',
'      ,username',
'      ,(SELECT message_content ',
'          FROM (SELECT message_content ',
'                  FROM demo_chat_conversation c ',
'                  WHERE c.chat_history_id = h.chat_history_id',
'                  ORDER BY message_ts DESC)',
'          WHERE ROWNUM = 1) AS latest_msg',
'  FROM demo_chat_history h'))
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'latest_msg_ts DESC'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(19441004830240439)
,p_region_id=>wwv_flow_imp.id(39053137804530861)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'LATEST_MSG'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CHAT_HISTORY_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(19441281166240441)
,p_card_id=>wwv_flow_imp.id(19441004830240439)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:select_chat_history(&CHAT_HISTORY_ID.)'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38027349218612769)
,p_plug_name=>'Chat'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41457044774455796)
,p_plug_name=>'Conversation Messages'
,p_region_name=>'chat_conversation'
,p_parent_plug_id=>wwv_flow_imp.id(38027349218612769)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT chat_conversation_id',
'      ,message_ts',
'      ,message_role',
'      ,CASE message_role',
'        WHEN ''USER'' THEN message_username',
'        WHEN ''ASSISTANT'' THEN ''AI''',
'       END AS message_username',
'      ,message_content',
'      ,''fa ''||',
'       CASE message_role',
'        WHEN ''USER'' THEN ''fa-user''',
'        WHEN ''ASSISTANT'' THEN ''fa-robot''',
'       END AS message_icon',
'      ,CASE message_role',
'        WHEN ''USER'' THEN ''u-color-5''',
'        WHEN ''ASSISTANT'' THEN ''u-color-14''',
'       END AS message_color',
'  FROM demo_chat_conversation',
' WHERE chat_history_id = :P3_CHAT_HISTORY_ID'))
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'message_ts ASC'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P3_CHAT_HISTORY_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'No messages yet'
,p_show_total_row_count=>false
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', '&MESSAGE_ICON. &MESSAGE_COLOR.',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'COMMENT_DATE', 'MESSAGE_TS',
  'COMMENT_TEXT', 'MESSAGE_CONTENT',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--chat',
  'USER_NAME', 'MESSAGE_USERNAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38026837201612764)
,p_name=>'MESSAGE_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MESSAGE_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38027187386612768)
,p_name=>'MESSAGE_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MESSAGE_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41457161376455797)
,p_name=>'CHAT_CONVERSATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHAT_CONVERSATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41457225205455798)
,p_name=>'MESSAGE_TS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MESSAGE_TS'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41457347699455799)
,p_name=>'MESSAGE_ROLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MESSAGE_ROLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41457445324455800)
,p_name=>'MESSAGE_CONTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MESSAGE_CONTENT'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41457483592455801)
,p_name=>'MESSAGE_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MESSAGE_USERNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41457614187455802)
,p_plug_name=>'Prompt'
,p_region_name=>'prompt'
,p_parent_plug_id=>wwv_flow_imp.id(38027349218612769)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19634584074290226)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(41457614187455802)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'fab_button'
,p_icon_css_classes=>'fa-send-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41476746512455544)
,p_name=>'P3_CHAT_HISTORY_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41477257334455572)
,p_name=>'P3_PROMPT_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41457614187455802)
,p_prompt=>'Ask anything ...'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19637752380290180)
,p_name=>'On SUBMIT - Click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19634584074290226)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19638212892290177)
,p_event_id=>wwv_flow_imp.id(19637752380290180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'submit_prompt'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'submit_prompt();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19635680647290200)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Selected Chat History'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P3_CHAT_HISTORY_ID'
,p_internal_uid=>19635680647290200
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19636094581290197)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submit_prompt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_chat_history_id       NUMBER := APEX_APPLICATION.G_X01;',
'  l_chat_conversation_id  NUMBER; ',
'  l_chat_message_content  CLOB := APEX_APPLICATION.G_X02;',
'  l_chat_ts               TIMESTAMP := SYSTIMESTAMP;',
'  l_chat_conversation     APEX_AI.T_CHAT_MESSAGES;',
'  l_ai_response           CLOB;',
'  l_idx                   PLS_INTEGER := 0;',
'BEGIN',
'  IF l_chat_history_id IS NULL THEN',
'    INSERT INTO demo_chat_history(',
'      chat_date,',
'      username',
'    )',
'    VALUES(',
'      l_chat_ts,',
'      :APP_USER',
'    )',
'    RETURNING chat_history_id INTO l_chat_history_id;',
'  END IF;',
'  ',
'  -- Log user message',
'  INSERT INTO demo_chat_conversation(',
'    chat_history_id,',
'    message_ts,',
'    message_content,',
'    message_role,',
'    message_username,',
'    message_embedding',
'  )',
'  VALUES(',
'    l_chat_history_id,',
'    l_chat_ts,',
'    l_chat_message_content,',
'    ''USER'',',
'    :APP_USER,',
'    APEX_AI.GET_VECTOR_EMBEDDINGS(p_value=>l_chat_message_content, p_service_static_id => ''demo_openai_text_embedding_3_large'')',
'  )',
'  RETURNING chat_conversation_id INTO l_chat_conversation_id;',
'  ',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''success'', TRUE);',
'  APEX_JSON.WRITE(''chat_history_id'', l_chat_history_id);',
'  APEX_JSON.WRITE(''chat_conversation_id'', l_chat_conversation_id);',
'  APEX_JSON.CLOSE_ALL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19636094581290197
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19636441249290195)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_chat_history_id       NUMBER := APEX_APPLICATION.G_X01;',
'  l_chat_message_content  CLOB := APEX_APPLICATION.G_X02;',
'  l_chat_ts               TIMESTAMP := SYSTIMESTAMP;',
'  l_chat_conversation     APEX_AI.T_CHAT_MESSAGES;',
'  l_ai_response           CLOB;',
'  l_idx                   PLS_INTEGER := 0;',
'BEGIN',
'  IF l_chat_history_id IS NOT NULL THEN ',
'    l_chat_conversation := APEX_AI.T_CHAT_MESSAGES();',
'     FOR r IN (',
'      SELECT LOWER(message_role) AS message_role',
'            ,message_content',
'        FROM demo_chat_conversation',
'       WHERE chat_history_id = l_chat_history_id',
'    )',
'    LOOP',
'      l_idx := l_idx + 1;',
'      l_chat_conversation(l_idx).chat_role := r.message_role;',
'      l_chat_conversation(l_idx).message   := r.message_content;',
'    END LOOP;',
'  END IF;',
'  ',
'  l_ai_response := APEX_AI.CHAT(',
'                     p_config_static_id => ''gold-cup-2025-config''',
'                    ,p_prompt => l_chat_message_content',
'                    ,p_messages => l_chat_conversation',
'                  );',
'',
'  -- Log assistant message',
'  INSERT INTO demo_chat_conversation(',
'    chat_history_id,',
'    message_ts,',
'    message_content,',
'    message_role,',
'    message_username,',
'    message_embedding',
'  )',
'  VALUES(',
'    l_chat_history_id,',
'    l_chat_ts,',
'    l_ai_response,',
'    ''ASSISTANT'',',
'    :APP_USER,',
'    APEX_AI.GET_VECTOR_EMBEDDINGS(p_value=>l_chat_message_content, p_service_static_id =>''demo_openai_text_embedding_3_large'')',
'  );',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''success'', TRUE);',
'  APEX_JSON.WRITE(''chat_history_id'', l_chat_history_id);',
'  APEX_JSON.CLOSE_ALL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19636441249290195
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Viscosity 23ai Demo - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18388426757159410)
,p_plug_name=>'Viscosity 23ai Demo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18390055363159366)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18388426757159410)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18388858496159381)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18388426757159410)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18389259300159374)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18388426757159410)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18389637678159371)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18388426757159410)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18392263261159347)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>18392263261159347
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18392765035159344)
,p_page_process_id=>wwv_flow_imp.id(18392263261159347)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18393262292159342)
,p_page_process_id=>wwv_flow_imp.id(18392263261159347)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18390379111159364)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>18390379111159364
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18390877068159357)
,p_page_process_id=>wwv_flow_imp.id(18390379111159364)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18391362450159351)
,p_page_process_id=>wwv_flow_imp.id(18390379111159364)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18391841433159349)
,p_page_process_id=>wwv_flow_imp.id(18390379111159364)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18394135488159338)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>18394135488159338
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18393715054159340)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>18393715054159340
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
