// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aaa_account_id.dart';import '../models/aaa_silence_create_request.dart';import '../models/aaa_silence_id.dart';import '../models/aaa_silence_update_request.dart';import '../models/response_common2.dart';/// NotificationSilencesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class NotificationSilencesApi with ApiExecutor {const NotificationSilencesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Silences
///
/// Gets a list of silences for an account.
///
/// `GET /accounts/{account_id}/alerting/v3/silences`
Future<ApiResult<ResponseCommon2, Never>> notificationSilencesListSilences({required AaaAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Silences
///
/// Creates a new silence for an account.
///
/// `POST /accounts/{account_id}/alerting/v3/silences`
Future<ApiResult<ResponseCommon2, Never>> notificationSilencesCreateSilences({required AaaAccountId accountId, required List<AaaSilenceCreateRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Silences
///
/// Updates existing silences for an account.
///
/// `PUT /accounts/{account_id}/alerting/v3/silences`
Future<ApiResult<ResponseCommon2, Never>> notificationSilencesUpdateSilences({required AaaAccountId accountId, required List<AaaSilenceUpdateRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Silence
///
/// Gets a specific silence for an account.
///
/// `GET /accounts/{account_id}/alerting/v3/silences/{silence_id}`
Future<ApiResult<ResponseCommon2, Never>> notificationSilencesGetSilence({required AaaAccountId accountId, required AaaSilenceId silenceId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences/${Uri.encodeComponent(silenceId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Silence
///
/// Deletes an existing silence for an account.
///
/// `DELETE /accounts/{account_id}/alerting/v3/silences/{silence_id}`
Future<ApiResult<ResponseCommon2, Never>> notificationSilencesDeleteSilences({required AaaAccountId accountId, required AaaSilenceId silenceId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences/${Uri.encodeComponent(silenceId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
