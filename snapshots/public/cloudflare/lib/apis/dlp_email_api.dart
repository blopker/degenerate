// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_create_email_rule.dart';import '../models/dlp_email_scanner_create_account_mapping_response.dart';import '../models/dlp_email_scanner_create_rule_response.dart';import '../models/dlp_email_scanner_delete_rule_response.dart';import '../models/dlp_email_scanner_get_account_mapping_response.dart';import '../models/dlp_email_scanner_get_rule_response.dart';import '../models/dlp_email_scanner_list_all_rules_response.dart';import '../models/dlp_email_scanner_update_rule_priorities_response.dart';import '../models/dlp_email_scanner_update_rule_response.dart';import '../models/dlp_update_addin_account_mapping.dart';import '../models/dlp_update_email_rule_priorities.dart';/// DlpEmailApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpEmailApi with ApiExecutor {const DlpEmailApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get mapping
///
/// `GET /accounts/{account_id}/dlp/email/account_mapping`
Future<ApiResult<DlpEmailScannerGetAccountMappingResponse, Never>> dlpEmailScannerGetAccountMapping({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/account_mapping',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEmailScannerGetAccountMappingResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create mapping
///
/// `POST /accounts/{account_id}/dlp/email/account_mapping`
Future<ApiResult<DlpEmailScannerCreateAccountMappingResponse, Never>> dlpEmailScannerCreateAccountMapping({required String accountId, required DlpUpdateAddinAccountMapping body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/account_mapping',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEmailScannerCreateAccountMappingResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all email scanner rules
///
/// Lists all email scanner rules for an account.
///
/// `GET /accounts/{account_id}/dlp/email/rules`
Future<ApiResult<DlpEmailScannerListAllRulesResponse, Never>> dlpEmailScannerListAllRules({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEmailScannerListAllRulesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create email scanner rule
///
/// `POST /accounts/{account_id}/dlp/email/rules`
Future<ApiResult<DlpEmailScannerCreateRuleResponse, Never>> dlpEmailScannerCreateRule({required String accountId, required DlpCreateEmailRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEmailScannerCreateRuleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update email scanner rule priorities
///
/// `PATCH /accounts/{account_id}/dlp/email/rules`
Future<ApiResult<DlpEmailScannerUpdateRulePrioritiesResponse, Never>> dlpEmailScannerUpdateRulePriorities({required String accountId, required DlpUpdateEmailRulePriorities body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEmailScannerUpdateRulePrioritiesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an email scanner rule
///
/// `GET /accounts/{account_id}/dlp/email/rules/{rule_id}`
Future<ApiResult<DlpEmailScannerGetRuleResponse, Never>> dlpEmailScannerGetRule({required String accountId, required String ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules/${Uri.encodeComponent(ruleId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEmailScannerGetRuleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update email scanner rule
///
/// `PUT /accounts/{account_id}/dlp/email/rules/{rule_id}`
Future<ApiResult<DlpEmailScannerUpdateRuleResponse, Never>> dlpEmailScannerUpdateRule({required String accountId, required String ruleId, required DlpCreateEmailRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules/${Uri.encodeComponent(ruleId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEmailScannerUpdateRuleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete email scanner rule
///
/// `DELETE /accounts/{account_id}/dlp/email/rules/{rule_id}`
Future<ApiResult<DlpEmailScannerDeleteRuleResponse, Never>> dlpEmailScannerDeleteRule({required String accountId, required String ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules/${Uri.encodeComponent(ruleId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEmailScannerDeleteRuleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
