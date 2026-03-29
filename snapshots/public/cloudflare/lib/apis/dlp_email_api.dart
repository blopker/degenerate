// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_create_email_rule.dart';import '../models/dlp_update_addin_account_mapping.dart';import '../models/dlp_update_email_rule_priorities.dart';import '../models/response_common20.dart';/// DlpEmailApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpEmailApi with ApiExecutor {const DlpEmailApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get mapping
///
/// `GET /accounts/{account_id}/dlp/email/account_mapping`
Future<ApiResult<ResponseCommon20, Never>> dlpEmailScannerGetAccountMapping({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/account_mapping',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create mapping
///
/// `POST /accounts/{account_id}/dlp/email/account_mapping`
Future<ApiResult<ResponseCommon20, Never>> dlpEmailScannerCreateAccountMapping({required String accountId, required DlpUpdateAddinAccountMapping body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all email scanner rules
///
/// Lists all email scanner rules for an account.
///
/// `GET /accounts/{account_id}/dlp/email/rules`
Future<ApiResult<ResponseCommon20, Never>> dlpEmailScannerListAllRules({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create email scanner rule
///
/// `POST /accounts/{account_id}/dlp/email/rules`
Future<ApiResult<ResponseCommon20, Never>> dlpEmailScannerCreateRule({required String accountId, required DlpCreateEmailRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update email scanner rule priorities
///
/// `PATCH /accounts/{account_id}/dlp/email/rules`
Future<ApiResult<ResponseCommon20, Never>> dlpEmailScannerUpdateRulePriorities({required String accountId, required DlpUpdateEmailRulePriorities body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an email scanner rule
///
/// `GET /accounts/{account_id}/dlp/email/rules/{rule_id}`
Future<ApiResult<ResponseCommon20, Never>> dlpEmailScannerGetRule({required String accountId, required String ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules/${Uri.encodeComponent(ruleId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update email scanner rule
///
/// `PUT /accounts/{account_id}/dlp/email/rules/{rule_id}`
Future<ApiResult<ResponseCommon20, Never>> dlpEmailScannerUpdateRule({required String accountId, required String ruleId, required DlpCreateEmailRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete email scanner rule
///
/// `DELETE /accounts/{account_id}/dlp/email/rules/{rule_id}`
Future<ApiResult<ResponseCommon20, Never>> dlpEmailScannerDeleteRule({required String accountId, required String ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules/${Uri.encodeComponent(ruleId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon20.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
