// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/builds_account_id.dart';import '../models/builds_external_script_id.dart';import '../models/list_workers_order.dart';import '../models/list_workers_order_by.dart';import '../models/response.dart';import '../models/response_common80.dart';import '../models/response_common_failure82.dart';import '../models/workers_identifier.dart';import '../models/workers_worker.dart';/// WorkersApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkersApi with ApiExecutor {const WorkersApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List builds by script
///
/// Get all builds for a specific worker script with pagination
///
/// `GET /accounts/{account_id}/builds/workers/{external_script_id}/builds`
Future<ApiResult<Response, Never>> listBuildsByScript({required BuildsAccountId accountId, required BuildsExternalScriptId externalScriptId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/builds/workers/${Uri.encodeComponent(externalScriptId.toString())}/builds',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List triggers by script
///
/// Get all triggers for a specific worker script
///
/// `GET /accounts/{account_id}/builds/workers/{external_script_id}/triggers`
Future<ApiResult<Response, Never>> listTriggersByScript({required BuildsAccountId accountId, required BuildsExternalScriptId externalScriptId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/builds/workers/${Uri.encodeComponent(externalScriptId.toString())}/triggers',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Workers
///
/// List all Workers for an account.
///
/// `GET /accounts/{account_id}/workers/workers`
Future<ApiResult<ResponseCommon80, ResponseCommonFailure82>> listWorkers({required WorkersIdentifier accountId, int? page, int? perPage, ListWorkersOrderBy? orderBy, ListWorkersOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (orderBy != null) queryParameters['order_by'] = orderBy.toJson();
if (order != null) queryParameters['order'] = order.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Worker
///
/// Create a new Worker.
///
/// `POST /accounts/{account_id}/workers/workers`
Future<ApiResult<ResponseCommon80, ResponseCommonFailure82>> createWorker({required WorkersIdentifier accountId, required WorkersWorker body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Worker
///
/// Get details about a specific Worker.
///
/// `GET /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<ResponseCommon80, ResponseCommonFailure82>> getWorker({required WorkersIdentifier accountId, required String workerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Worker
///
/// Perform a complete replacement of a Worker, where omitted properties are set to their default values. This is the exact same as the Create Worker endpoint, but operates on an existing Worker. To perform a partial update instead, use the Edit Worker endpoint.
///
/// `PUT /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<ResponseCommon80, ResponseCommonFailure82>> updateWorker({required WorkersIdentifier accountId, required String workerId, required WorkersWorker body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Edit Worker
///
/// Perform a partial update on a Worker, where omitted properties are left unchanged from their current values.
///
/// `PATCH /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<ResponseCommon80, ResponseCommonFailure82>> editWorker({required WorkersIdentifier accountId, required String workerId, required WorkersWorker body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Worker
///
/// Delete a Worker and all its associated resources (versions, deployments, etc.).
///
/// `DELETE /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<ResponseCommon80, ResponseCommonFailure82>> deleteWorker({required WorkersIdentifier accountId, required String workerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure82.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
