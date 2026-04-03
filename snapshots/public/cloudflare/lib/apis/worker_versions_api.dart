// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/worker_versions_upload_version_bindings_inherit.dart';import '../models/worker_versions_upload_version_request.dart';import '../models/workers_identifier.dart';import '../models/workers_schemas_script_name.dart';import '../models/workers_version_identifier.dart';import '../models/workers_version_item_full.dart';import '../models/workers_version_item_uploaded.dart';import '../models/workers_versions_list_response_result.dart';/// WorkerVersionsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkerVersionsApi with ApiExecutor {const WorkerVersionsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Versions
///
/// List of Worker Versions. The first version in the list is the latest version.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/versions`
Future<ApiResult<WorkersVersionsListResponseResult, Never>> workerVersionsListVersions({required WorkersIdentifier accountId, required WorkersSchemasScriptName scriptName, bool? deployable, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (deployable != null) {
  queryParameters['deployable'] = deployable.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/versions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersVersionsListResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Upload Version
///
/// Upload a Worker Version without deploying to Cloudflare's network. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.
///
/// `POST /accounts/{account_id}/workers/scripts/{script_name}/versions`
Future<ApiResult<WorkersVersionItemUploaded, Never>> workerVersionsUploadVersion({required WorkersIdentifier accountId, required WorkersSchemasScriptName scriptName, required WorkerVersionsUploadVersionRequest body, WorkerVersionsUploadVersionBindingsInherit? bindingsInherit, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (bindingsInherit != null) {
  queryParameters['bindings_inherit'] = bindingsInherit.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/versions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: [
    if (body.files case final files$?)
      ApiMultipartField.text('files', files$.toString()),
    ApiMultipartField.text('metadata', body.metadata.toString()),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersVersionItemUploaded.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Get Version Detail
///
/// Retrieves detailed information about a specific version of a Workers script.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/versions/{version_id}`
Future<ApiResult<WorkersVersionItemFull, Never>> workerVersionsGetVersionDetail({required WorkersIdentifier accountId, required WorkersSchemasScriptName scriptName, required WorkersVersionIdentifier versionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/versions/${Uri.encodeComponent(versionId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersVersionItemFull.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
 }
