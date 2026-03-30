// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/builds_account_id.dart';import '../models/builds_environment_variable_key.dart';import '../models/builds_environment_variables_request_value.dart';import '../models/builds_error_response.dart';import '../models/builds_trigger_uuid.dart';/// EnvironmentVariablesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EnvironmentVariablesApi with ApiExecutor {const EnvironmentVariablesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List environment variables
///
/// Get all environment variables for a trigger
///
/// `GET /accounts/{account_id}/builds/triggers/{trigger_uuid}/environment_variables`
Future<ApiResult<Map<String, dynamic>?, Never>> listEnvironmentVariables({required BuildsAccountId accountId, required BuildsTriggerUuid triggerUuid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/builds/triggers/${Uri.encodeComponent(triggerUuid.toString())}/environment_variables',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
/// Upsert environment variables
///
/// Create or update environment variables for a trigger
///
/// `PATCH /accounts/{account_id}/builds/triggers/{trigger_uuid}/environment_variables`
Future<ApiResult<Map<String, dynamic>?, BuildsErrorResponse>> upsertEnvironmentVariables({required BuildsAccountId accountId, required BuildsTriggerUuid triggerUuid, required Map<String,BuildsEnvironmentVariablesRequestValue> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/builds/triggers/${Uri.encodeComponent(triggerUuid.toString())}/environment_variables',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
  onError: (response) {
    return BuildsErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete environment variable
///
/// Remove a specific environment variable from a trigger
///
/// `DELETE /accounts/{account_id}/builds/triggers/{trigger_uuid}/environment_variables/{environment_variable_key}`
Future<ApiResult<Map<String, dynamic>?, BuildsErrorResponse>> deleteEnvironmentVariable({required BuildsAccountId accountId, required BuildsTriggerUuid triggerUuid, required BuildsEnvironmentVariableKey environmentVariableKey, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/builds/triggers/${Uri.encodeComponent(triggerUuid.toString())}/environment_variables/${Uri.encodeComponent(environmentVariableKey.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
  onError: (response) {
    return BuildsErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
