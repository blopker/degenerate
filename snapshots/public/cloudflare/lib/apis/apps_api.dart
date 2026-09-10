// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_app_request.dart';import '../models/create_app_response.dart';import '../models/get_apps_response.dart';import '../models/realtimekit_account_identifier.dart';/// AppsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AppsApi with ApiExecutor {const AppsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch all apps
///
/// Fetch all apps for your account
///
/// `GET /accounts/{account_id}/realtime/kit/apps`
Future<ApiResult<GetAppsResponse, Never>> getApps({required RealtimekitAccountIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/apps',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  GetAppsResponse.fromJson(json as Map<String, dynamic>);}, );}
/// Create App
///
/// Create new app for your account
///
/// `POST /accounts/{account_id}/realtime/kit/apps`
Future<ApiResult<CreateAppResponse, Never>> createApp({required String accountId, CreateAppRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/realtime/kit/apps',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  CreateAppResponse.fromJson(json as Map<String, dynamic>);}, );}
}
