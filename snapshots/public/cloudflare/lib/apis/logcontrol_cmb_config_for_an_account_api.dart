// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/logcontrol_cmb_config.dart';import '../models/logcontrol_identifier.dart';import '../models/response_common_failure44.dart';/// LogcontrolCmbConfigForAnAccountApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LogcontrolCmbConfigForAnAccountApi with ApiExecutor {const LogcontrolCmbConfigForAnAccountApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get CMB config
///
/// Gets CMB config.
///
/// `GET /accounts/{account_id}/logs/control/cmb/config`
Future<ApiResult<LogcontrolCmbConfig?, ResponseCommonFailure44>> getAccountsAccountIdLogsControlCmbConfig({required LogcontrolIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/logs/control/cmb/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogcontrolCmbConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure44.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update CMB config
///
/// Updates CMB config.
///
/// `POST /accounts/{account_id}/logs/control/cmb/config`
Future<ApiResult<LogcontrolCmbConfig?, ResponseCommonFailure44>> postAccountsAccountIdLogsControlCmbConfig({required LogcontrolIdentifier accountId, required LogcontrolCmbConfig body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/logs/control/cmb/config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? LogcontrolCmbConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure44.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete CMB config
///
/// Deletes CMB config.
///
/// `DELETE /accounts/{account_id}/logs/control/cmb/config`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure44>> deleteAccountsAccountIdLogsControlCmbConfig({required LogcontrolIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/logs/control/cmb/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
    return ResponseCommonFailure44.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
