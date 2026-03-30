// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/worker_account_settings_create_worker_account_settings_response.dart';import '../models/worker_account_settings_fetch_worker_account_settings_response.dart';import '../models/workers_account_settings.dart';import '../models/workers_identifier.dart';/// WorkerAccountSettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkerAccountSettingsApi with ApiExecutor {const WorkerAccountSettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch Worker Account Settings
///
/// Fetches Worker account settings for an account.
///
/// `GET /accounts/{account_id}/workers/account-settings`
Future<ApiResult<WorkerAccountSettingsFetchWorkerAccountSettingsResponse, Never>> workerAccountSettingsFetchWorkerAccountSettings({required WorkersIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/account-settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorkerAccountSettingsFetchWorkerAccountSettingsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Worker Account Settings
///
/// Creates Worker account settings for an account.
///
/// `PUT /accounts/{account_id}/workers/account-settings`
Future<ApiResult<WorkerAccountSettingsCreateWorkerAccountSettingsResponse, Never>> workerAccountSettingsCreateWorkerAccountSettings({required WorkersIdentifier accountId, required WorkersAccountSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/account-settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorkerAccountSettingsCreateWorkerAccountSettingsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
