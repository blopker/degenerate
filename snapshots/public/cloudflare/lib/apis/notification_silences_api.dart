// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aaa_account_id.dart';import '../models/aaa_silence.dart';import '../models/aaa_silence_create_request.dart';import '../models/aaa_silence_id.dart';import '../models/aaa_silence_update_request.dart';import '../models/notification_silences_create_silences_response4xx.dart';import '../models/notification_silences_delete_silences_response4xx.dart';import '../models/notification_silences_get_silence_response4xx.dart';import '../models/notification_silences_list_silences_response4xx.dart';import '../models/notification_silences_update_silences_response4xx.dart';import '../models/response_common2.dart';/// NotificationSilencesApi operations.
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
Future<ApiResult<List<AaaSilence>?, NotificationSilencesListSilencesResponse4xx>> notificationSilencesListSilences({required AaaAccountId accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>?)?.map((e) => AaaSilence.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  NotificationSilencesListSilencesResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Create Silences
///
/// Creates a new silence for an account.
///
/// `POST /accounts/{account_id}/alerting/v3/silences`
Future<ApiResult<ResponseCommon2, NotificationSilencesCreateSilencesResponse4xx>> notificationSilencesCreateSilences({required AaaAccountId accountId, required List<AaaSilenceCreateRequest> body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  ResponseCommon2.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  NotificationSilencesCreateSilencesResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Update Silences
///
/// Updates existing silences for an account.
///
/// `PUT /accounts/{account_id}/alerting/v3/silences`
Future<ApiResult<List<AaaSilence>?, NotificationSilencesUpdateSilencesResponse4xx>> notificationSilencesUpdateSilences({required AaaAccountId accountId, required List<AaaSilenceUpdateRequest> body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>?)?.map((e) => AaaSilence.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  NotificationSilencesUpdateSilencesResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get Silence
///
/// Gets a specific silence for an account.
///
/// `GET /accounts/{account_id}/alerting/v3/silences/{silence_id}`
Future<ApiResult<AaaSilence?, NotificationSilencesGetSilenceResponse4xx>> notificationSilencesGetSilence({required AaaAccountId accountId, required AaaSilenceId silenceId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences/${Uri.encodeComponent(silenceId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? AaaSilence.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  NotificationSilencesGetSilenceResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Delete Silence
///
/// Deletes an existing silence for an account.
///
/// `DELETE /accounts/{account_id}/alerting/v3/silences/{silence_id}`
Future<ApiResult<ResponseCommon2, NotificationSilencesDeleteSilencesResponse4xx>> notificationSilencesDeleteSilences({required AaaAccountId accountId, required AaaSilenceId silenceId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/alerting/v3/silences/${Uri.encodeComponent(silenceId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  ResponseCommon2.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  NotificationSilencesDeleteSilencesResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
