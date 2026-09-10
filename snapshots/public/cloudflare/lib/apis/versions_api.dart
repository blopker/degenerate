// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_worker_version_include.dart';import '../models/response_common80.dart';import '../models/response_common_failure82.dart';import '../models/workers_identifier.dart';import '../models/workers_version_request.dart';import '../models/workers_version_response.dart';/// VersionsApi operations.
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
Future<ApiResult<List<WorkersVersionResponse>, ResponseCommonFailure82>> listWorkerVersions({required WorkersIdentifier accountId, required String workerId, int? page, int? perPage, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => WorkersVersionResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Create Version
///
/// Create a new version.
///
/// `POST /accounts/{account_id}/workers/workers/{worker_id}/versions`
Future<ApiResult<WorkersVersionResponse, ResponseCommonFailure82>> createWorkerVersion({required WorkersIdentifier accountId, required String workerId, required WorkersVersionRequest body, bool? deploy, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorkersVersionResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Get Version
///
/// Get details about a specific version.
///
/// `GET /accounts/{account_id}/workers/workers/{worker_id}/versions/{version_id}`
Future<ApiResult<WorkersVersionResponse, ResponseCommonFailure82>> getWorkerVersion({required WorkersIdentifier accountId, required String workerId, required String versionId, GetWorkerVersionInclude? include, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorkersVersionResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Delete Version
///
/// Delete a version.
///
/// `DELETE /accounts/{account_id}/workers/workers/{worker_id}/versions/{version_id}`
Future<ApiResult<ResponseCommon80, ResponseCommonFailure82>> deleteWorkerVersion({required WorkersIdentifier accountId, required String workerId, required String versionId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/workers/${Uri.encodeComponent(workerId)}/versions/${Uri.encodeComponent(versionId)}',
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
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
