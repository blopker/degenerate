// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_accounts_account_id_logs_control_cmb_config_response.dart';import '../models/logcontrol_cmb_config.dart';import '../models/logcontrol_cmb_config_response_single.dart';import '../models/logcontrol_identifier.dart';/// LogcontrolCmbConfigForAnAccountApi operations.
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
Future<ApiResult<LogcontrolCmbConfigResponseSingle, Never>> getAccountsAccountIdLogsControlCmbConfig({required LogcontrolIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/logs/control/cmb/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return LogcontrolCmbConfigResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update CMB config
///
/// Updates CMB config.
///
/// `POST /accounts/{account_id}/logs/control/cmb/config`
Future<ApiResult<LogcontrolCmbConfigResponseSingle, Never>> postAccountsAccountIdLogsControlCmbConfig({required LogcontrolIdentifier accountId, required LogcontrolCmbConfig body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return LogcontrolCmbConfigResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete CMB config
///
/// Deletes CMB config.
///
/// `DELETE /accounts/{account_id}/logs/control/cmb/config`
Future<ApiResult<DeleteAccountsAccountIdLogsControlCmbConfigResponse, Never>> deleteAccountsAccountIdLogsControlCmbConfig({required LogcontrolIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/logs/control/cmb/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeleteAccountsAccountIdLogsControlCmbConfigResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
