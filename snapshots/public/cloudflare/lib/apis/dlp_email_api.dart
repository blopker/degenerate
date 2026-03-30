// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_addin_account_mapping.dart';import '../models/dlp_create_email_rule.dart';import '../models/dlp_email_rule.dart';import '../models/dlp_update_addin_account_mapping.dart';import '../models/dlp_update_email_rule_priorities.dart';/// DlpEmailApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpEmailApi with ApiExecutor {const DlpEmailApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get mapping
///
/// `GET /accounts/{account_id}/dlp/email/account_mapping`
Future<ApiResult<DlpAddinAccountMapping?, Never>> dlpEmailScannerGetAccountMapping({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/account_mapping',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpAddinAccountMapping.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create mapping
///
/// `POST /accounts/{account_id}/dlp/email/account_mapping`
Future<ApiResult<DlpAddinAccountMapping?, Never>> dlpEmailScannerCreateAccountMapping({required String accountId, required DlpUpdateAddinAccountMapping body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpAddinAccountMapping.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List all email scanner rules
///
/// Lists all email scanner rules for an account.
///
/// `GET /accounts/{account_id}/dlp/email/rules`
Future<ApiResult<List<DlpEmailRule>?, Never>> dlpEmailScannerListAllRules({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DlpEmailRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create email scanner rule
///
/// `POST /accounts/{account_id}/dlp/email/rules`
Future<ApiResult<DlpEmailRule?, Never>> dlpEmailScannerCreateRule({required String accountId, required DlpCreateEmailRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpEmailRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update email scanner rule priorities
///
/// `PATCH /accounts/{account_id}/dlp/email/rules`
Future<ApiResult<DlpEmailRule?, Never>> dlpEmailScannerUpdateRulePriorities({required String accountId, required DlpUpdateEmailRulePriorities body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpEmailRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get an email scanner rule
///
/// `GET /accounts/{account_id}/dlp/email/rules/{rule_id}`
Future<ApiResult<DlpEmailRule?, Never>> dlpEmailScannerGetRule({required String accountId, required String ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules/${Uri.encodeComponent(ruleId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpEmailRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update email scanner rule
///
/// `PUT /accounts/{account_id}/dlp/email/rules/{rule_id}`
Future<ApiResult<DlpEmailRule?, Never>> dlpEmailScannerUpdateRule({required String accountId, required String ruleId, required DlpCreateEmailRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpEmailRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete email scanner rule
///
/// `DELETE /accounts/{account_id}/dlp/email/rules/{rule_id}`
Future<ApiResult<DlpEmailRule?, Never>> dlpEmailScannerDeleteRule({required String accountId, required String ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/email/rules/${Uri.encodeComponent(ruleId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpEmailRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
