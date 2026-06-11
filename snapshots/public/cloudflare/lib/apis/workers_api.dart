// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/builds_account_id.dart';import '../models/builds_build_response.dart';import '../models/builds_external_script_id.dart';import '../models/builds_trigger_response.dart';import '../models/create_worker_response400.dart';import '../models/delete_worker_response400.dart';import '../models/edit_worker_response400.dart';import '../models/get_worker_response400.dart';import '../models/list_workers_order.dart';import '../models/list_workers_order_by.dart';import '../models/list_workers_response401.dart';import '../models/response_common80.dart';import '../models/update_worker_response400.dart';import '../models/workers_identifier.dart';import '../models/workers_worker.dart';/// WorkersApi operations.
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
Future<ApiResult<List<BuildsBuildResponse>, Never>> listBuildsByScript({required BuildsAccountId accountId, required BuildsExternalScriptId externalScriptId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => BuildsBuildResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List triggers by script
///
/// Get all triggers for a specific worker script
///
/// `GET /accounts/{account_id}/builds/workers/{external_script_id}/triggers`
Future<ApiResult<List<BuildsTriggerResponse>, Never>> listTriggersByScript({required BuildsAccountId accountId, required BuildsExternalScriptId externalScriptId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/builds/workers/${Uri.encodeComponent(externalScriptId.toString())}/triggers',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => BuildsTriggerResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List Workers
///
/// List all Workers for an account.
///
/// `GET /accounts/{account_id}/workers/workers`
Future<ApiResult<List<WorkersWorker>, ListWorkersResponse401>> listWorkers({required WorkersIdentifier accountId, int? page, int? perPage, ListWorkersOrderBy? orderBy, ListWorkersOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (orderBy != null) {
  queryParameters['order_by'] = orderBy.toJson();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}

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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => WorkersWorker.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ListWorkersResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Worker
///
/// Create a new Worker.
///
/// `POST /accounts/{account_id}/workers/workers`
Future<ApiResult<WorkersWorker, CreateWorkerResponse400>> createWorker({required WorkersIdentifier accountId, required WorkersWorker body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersWorker.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return CreateWorkerResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Worker
///
/// Get details about a specific Worker.
///
/// `GET /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<WorkersWorker, GetWorkerResponse400>> getWorker({required WorkersIdentifier accountId, required String workerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersWorker.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return GetWorkerResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Worker
///
/// Perform a complete replacement of a Worker, where omitted properties are set to their default values. This is the exact same as the Create Worker endpoint, but operates on an existing Worker. To perform a partial update instead, use the Edit Worker endpoint.
///
/// `PUT /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<WorkersWorker, UpdateWorkerResponse400>> updateWorker({required WorkersIdentifier accountId, required String workerId, required WorkersWorker body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersWorker.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return UpdateWorkerResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Edit Worker
///
/// Perform a partial update on a Worker, where omitted properties are left unchanged from their current values.
///
/// `PATCH /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<WorkersWorker, EditWorkerResponse400>> editWorker({required WorkersIdentifier accountId, required String workerId, required WorkersWorker body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersWorker.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return EditWorkerResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Worker
///
/// Delete a Worker and all its associated resources (versions, deployments, etc.).
///
/// `DELETE /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<ResponseCommon80, DeleteWorkerResponse400>> deleteWorker({required WorkersIdentifier accountId, required String workerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return DeleteWorkerResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
