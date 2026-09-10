// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/builds_account_id.dart';import '../models/builds_build_response.dart';import '../models/builds_external_script_id.dart';import '../models/builds_trigger_response.dart';import '../models/create_worker_response400.dart';import '../models/create_worker_response401.dart';import '../models/create_worker_response403.dart';import '../models/create_worker_response409.dart';import '../models/create_worker_response500.dart';import '../models/delete_worker_response400.dart';import '../models/delete_worker_response401.dart';import '../models/delete_worker_response404.dart';import '../models/delete_worker_response500.dart';import '../models/edit_worker_response400.dart';import '../models/edit_worker_response401.dart';import '../models/edit_worker_response403.dart';import '../models/edit_worker_response404.dart';import '../models/edit_worker_response409.dart';import '../models/edit_worker_response500.dart';import '../models/get_worker_response400.dart';import '../models/get_worker_response404.dart';import '../models/get_worker_response500.dart';import '../models/list_workers_order.dart';import '../models/list_workers_order_by.dart';import '../models/list_workers_response401.dart';import '../models/list_workers_response500.dart';import '../models/response_common80.dart';import '../models/update_worker_response400.dart';import '../models/update_worker_response401.dart';import '../models/update_worker_response403.dart';import '../models/update_worker_response404.dart';import '../models/update_worker_response409.dart';import '../models/update_worker_response500.dart';import '../models/workers_identifier.dart';import '../models/workers_worker.dart';import '../models/workers_worker_request.dart';/// WorkersApi operations.
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

return await execute(
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

return await execute(
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
Future<ApiResult<List<WorkersWorker>, OneOf2<ListWorkersResponse401, ListWorkersResponse500>>> listWorkers({required WorkersIdentifier accountId, int? page, int? perPage, ListWorkersOrderBy? orderBy, ListWorkersOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => WorkersWorker.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return OneOf2<ListWorkersResponse401, ListWorkersResponse500>.a(ListWorkersResponse401.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf2<ListWorkersResponse401, ListWorkersResponse500>.b(ListWorkersResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Create Worker
///
/// Create a new Worker.
///
/// `POST /accounts/{account_id}/workers/workers`
Future<ApiResult<WorkersWorker, OneOf5<CreateWorkerResponse400, CreateWorkerResponse401, CreateWorkerResponse403, CreateWorkerResponse409, CreateWorkerResponse500>>> createWorker({required WorkersIdentifier accountId, required WorkersWorkerRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorkersWorker.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf5<CreateWorkerResponse400, CreateWorkerResponse401, CreateWorkerResponse403, CreateWorkerResponse409, CreateWorkerResponse500>.a(CreateWorkerResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return OneOf5<CreateWorkerResponse400, CreateWorkerResponse401, CreateWorkerResponse403, CreateWorkerResponse409, CreateWorkerResponse500>.b(CreateWorkerResponse401.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return OneOf5<CreateWorkerResponse400, CreateWorkerResponse401, CreateWorkerResponse403, CreateWorkerResponse409, CreateWorkerResponse500>.c(CreateWorkerResponse403.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return OneOf5<CreateWorkerResponse400, CreateWorkerResponse401, CreateWorkerResponse403, CreateWorkerResponse409, CreateWorkerResponse500>.d(CreateWorkerResponse409.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf5<CreateWorkerResponse400, CreateWorkerResponse401, CreateWorkerResponse403, CreateWorkerResponse409, CreateWorkerResponse500>.e(CreateWorkerResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get Worker
///
/// Get details about a specific Worker.
///
/// `GET /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<WorkersWorker, OneOf3<GetWorkerResponse400, GetWorkerResponse404, GetWorkerResponse500>>> getWorker({required WorkersIdentifier accountId, required String workerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorkersWorker.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf3<GetWorkerResponse400, GetWorkerResponse404, GetWorkerResponse500>.a(GetWorkerResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf3<GetWorkerResponse400, GetWorkerResponse404, GetWorkerResponse500>.b(GetWorkerResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf3<GetWorkerResponse400, GetWorkerResponse404, GetWorkerResponse500>.c(GetWorkerResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Update Worker
///
/// Perform a complete replacement of a Worker, where omitted properties are set to their default values. This is the exact same as the Create Worker endpoint, but operates on an existing Worker. To perform a partial update instead, use the Edit Worker endpoint.
///
/// `PUT /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<WorkersWorker, OneOf6<UpdateWorkerResponse400, UpdateWorkerResponse401, UpdateWorkerResponse403, UpdateWorkerResponse404, UpdateWorkerResponse409, UpdateWorkerResponse500>>> updateWorker({required WorkersIdentifier accountId, required String workerId, required WorkersWorkerRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorkersWorker.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf6<UpdateWorkerResponse400, UpdateWorkerResponse401, UpdateWorkerResponse403, UpdateWorkerResponse404, UpdateWorkerResponse409, UpdateWorkerResponse500>.a(UpdateWorkerResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return OneOf6<UpdateWorkerResponse400, UpdateWorkerResponse401, UpdateWorkerResponse403, UpdateWorkerResponse404, UpdateWorkerResponse409, UpdateWorkerResponse500>.b(UpdateWorkerResponse401.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return OneOf6<UpdateWorkerResponse400, UpdateWorkerResponse401, UpdateWorkerResponse403, UpdateWorkerResponse404, UpdateWorkerResponse409, UpdateWorkerResponse500>.c(UpdateWorkerResponse403.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf6<UpdateWorkerResponse400, UpdateWorkerResponse401, UpdateWorkerResponse403, UpdateWorkerResponse404, UpdateWorkerResponse409, UpdateWorkerResponse500>.d(UpdateWorkerResponse404.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return OneOf6<UpdateWorkerResponse400, UpdateWorkerResponse401, UpdateWorkerResponse403, UpdateWorkerResponse404, UpdateWorkerResponse409, UpdateWorkerResponse500>.e(UpdateWorkerResponse409.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf6<UpdateWorkerResponse400, UpdateWorkerResponse401, UpdateWorkerResponse403, UpdateWorkerResponse404, UpdateWorkerResponse409, UpdateWorkerResponse500>.f(UpdateWorkerResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Edit Worker
///
/// Perform a partial update on a Worker, where omitted properties are left unchanged from their current values.
///
/// `PATCH /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<WorkersWorker, OneOf6<EditWorkerResponse400, EditWorkerResponse401, EditWorkerResponse403, EditWorkerResponse404, EditWorkerResponse409, EditWorkerResponse500>>> editWorker({required WorkersIdentifier accountId, required String workerId, required WorkersWorkerRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorkersWorker.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf6<EditWorkerResponse400, EditWorkerResponse401, EditWorkerResponse403, EditWorkerResponse404, EditWorkerResponse409, EditWorkerResponse500>.a(EditWorkerResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return OneOf6<EditWorkerResponse400, EditWorkerResponse401, EditWorkerResponse403, EditWorkerResponse404, EditWorkerResponse409, EditWorkerResponse500>.b(EditWorkerResponse401.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return OneOf6<EditWorkerResponse400, EditWorkerResponse401, EditWorkerResponse403, EditWorkerResponse404, EditWorkerResponse409, EditWorkerResponse500>.c(EditWorkerResponse403.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf6<EditWorkerResponse400, EditWorkerResponse401, EditWorkerResponse403, EditWorkerResponse404, EditWorkerResponse409, EditWorkerResponse500>.d(EditWorkerResponse404.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return OneOf6<EditWorkerResponse400, EditWorkerResponse401, EditWorkerResponse403, EditWorkerResponse404, EditWorkerResponse409, EditWorkerResponse500>.e(EditWorkerResponse409.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf6<EditWorkerResponse400, EditWorkerResponse401, EditWorkerResponse403, EditWorkerResponse404, EditWorkerResponse409, EditWorkerResponse500>.f(EditWorkerResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Delete Worker
///
/// Delete a Worker and all its associated resources (versions, deployments, etc.).
///
/// `DELETE /accounts/{account_id}/workers/workers/{worker_id}`
Future<ApiResult<ResponseCommon80, OneOf4<DeleteWorkerResponse400, DeleteWorkerResponse401, DeleteWorkerResponse404, DeleteWorkerResponse500>>> deleteWorker({required WorkersIdentifier accountId, required String workerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ResponseCommon80.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<DeleteWorkerResponse400, DeleteWorkerResponse401, DeleteWorkerResponse404, DeleteWorkerResponse500>.a(DeleteWorkerResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return OneOf4<DeleteWorkerResponse400, DeleteWorkerResponse401, DeleteWorkerResponse404, DeleteWorkerResponse500>.b(DeleteWorkerResponse401.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf4<DeleteWorkerResponse400, DeleteWorkerResponse401, DeleteWorkerResponse404, DeleteWorkerResponse500>.c(DeleteWorkerResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<DeleteWorkerResponse400, DeleteWorkerResponse401, DeleteWorkerResponse404, DeleteWorkerResponse500>.d(DeleteWorkerResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
