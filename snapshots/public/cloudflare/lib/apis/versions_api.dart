// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_worker_version_include.dart';import '../models/response_common80.dart';import '../models/workers_identifier.dart';import '../models/workers_version.dart';/// VersionsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class VersionsApi with ApiExecutor {const VersionsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Versions
///
/// List all versions for a Worker.
///
/// `GET /accounts/{account_id}/workers/workers/{worker_id}/versions`
Future<ApiResult<ResponseCommon80, Never>> listWorkerVersions({required WorkersIdentifier accountId, required String workerId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}/versions',
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
);
 } 
/// Create Version
///
/// Create a new version.
///
/// `POST /accounts/{account_id}/workers/workers/{worker_id}/versions`
Future<ApiResult<ResponseCommon80, Never>> createWorkerVersion({required WorkersIdentifier accountId, required String workerId, bool? deploy, required WorkersVersion body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (deploy != null) {
  queryParameters['deploy'] = deploy.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}/versions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Version
///
/// Get details about a specific version.
///
/// `GET /accounts/{account_id}/workers/workers/{worker_id}/versions/{version_id}`
Future<ApiResult<ResponseCommon80, Never>> getWorkerVersion({required WorkersIdentifier accountId, required String workerId, required String versionId, GetWorkerVersionInclude? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (include != null) {
  queryParameters['include'] = include.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}/versions/${Uri.encodeComponent(versionId)}',
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
);
 } 
/// Delete Version
///
/// Delete a version.
///
/// `DELETE /accounts/{account_id}/workers/workers/{worker_id}/versions/{version_id}`
Future<ApiResult<ResponseCommon80, Never>> deleteWorkerVersion({required WorkersIdentifier accountId, required String workerId, required String versionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}/versions/${Uri.encodeComponent(versionId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
