// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/calls_account_identifier.dart';import '../models/calls_app_editable_fields.dart';import '../models/calls_app_response_collection.dart';import '../models/calls_app_response_single.dart';import '../models/calls_app_response_single_with_secret.dart';import '../models/calls_identifier.dart';/// CallsAppsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CallsAppsApi with ApiExecutor {const CallsAppsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List apps
///
/// Lists all apps in the Cloudflare account
///
/// `GET /accounts/{account_id}/calls/apps`
Future<ApiResult<CallsAppResponseCollection, Never>> callsAppsList({required CallsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/apps',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CallsAppResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new app
///
/// Creates a new Cloudflare calls app. An app is an unique enviroment where each Session can access all Tracks within the app.
///
/// `POST /accounts/{account_id}/calls/apps`
Future<ApiResult<CallsAppResponseSingleWithSecret, Never>> callsAppsCreateANewApp({required CallsAccountIdentifier accountId, required CallsAppEditableFields body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/apps',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CallsAppResponseSingleWithSecret.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieve app details
///
/// Fetches details for a single Calls app.
///
/// `GET /accounts/{account_id}/calls/apps/{app_id}`
Future<ApiResult<CallsAppResponseSingle, Never>> callsAppsRetrieveAppDetails({required CallsIdentifier appId, required CallsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CallsAppResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Edit app details
///
/// Edit details for a single app.
///
/// `PUT /accounts/{account_id}/calls/apps/{app_id}`
Future<ApiResult<CallsAppResponseSingle, Never>> callsAppsUpdateAppDetails({required CallsIdentifier appId, required CallsAccountIdentifier accountId, required CallsAppEditableFields body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CallsAppResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete app
///
/// Deletes an app from Cloudflare Calls
///
/// `DELETE /accounts/{account_id}/calls/apps/{app_id}`
Future<ApiResult<CallsAppResponseSingle, Never>> callsAppsDeleteApp({required CallsIdentifier appId, required CallsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CallsAppResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
