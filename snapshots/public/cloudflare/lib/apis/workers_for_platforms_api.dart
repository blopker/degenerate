// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/namespace_worker_create_request.dart';import '../models/namespace_worker_patch_namespace_request.dart';import '../models/namespace_worker_patch_script_settings_request.dart';import '../models/namespace_worker_put_namespace_request.dart';import '../models/namespace_worker_put_script_content_request.dart';import '../models/namespace_worker_script_upload_worker_module_bindings_inherit.dart';import '../models/response_common_failure82.dart';import '../models/workers_binding_item_response.dart';import '../models/workers_create_assets_upload_session_object.dart';import '../models/workers_create_assets_upload_session_response_result.dart';import '../models/workers_dispatch_namespace_name.dart';import '../models/workers_identifier.dart';import '../models/workers_multipart_script_request.dart';import '../models/workers_namespace_response.dart';import '../models/workers_namespace_script_and_version_settings_item_response.dart';import '../models/workers_namespace_script_delete_bulk_response.dart';import '../models/workers_namespace_script_response.dart';import '../models/workers_script_name.dart';import '../models/workers_script_response.dart';import '../models/workers_script_response_upload.dart';import '../models/workers_secret.dart';import '../models/workers_secret_name.dart';import '../models/workers_secret_name_url_encoded.dart';import '../models/workers_secret_response.dart';import '../models/workers_tag.dart';/// WorkersForPlatformsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkersForPlatformsApi with ApiExecutor {const WorkersForPlatformsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List dispatch namespaces
///
/// Fetch a list of Workers for Platforms namespaces.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces`
Future<ApiResult<List<WorkersNamespaceResponse>?, ResponseCommonFailure82>> namespaceWorkerList({required WorkersIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>?)?.map((e) => WorkersNamespaceResponse.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Create dispatch namespace
///
/// Create a new Workers for Platforms namespace.
///
/// `POST /accounts/{account_id}/workers/dispatch/namespaces`
Future<ApiResult<WorkersNamespaceResponse?, ResponseCommonFailure82>> namespaceWorkerCreate({required WorkersIdentifier accountId, required NamespaceWorkerCreateRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? WorkersNamespaceResponse.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get dispatch namespace
///
/// Get a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`
Future<ApiResult<WorkersNamespaceResponse?, ResponseCommonFailure82>> namespaceWorkerGetNamespace({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? WorkersNamespaceResponse.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Update dispatch namespace
///
/// Update a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`
Future<ApiResult<WorkersNamespaceResponse?, ResponseCommonFailure82>> namespaceWorkerPutNamespace({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required NamespaceWorkerPutNamespaceRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? WorkersNamespaceResponse.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Patch dispatch namespace
///
/// Patch a Workers for Platforms namespace. Omitted fields are left unchanged.
///
/// `PATCH /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`
Future<ApiResult<WorkersNamespaceResponse?, ResponseCommonFailure82>> namespaceWorkerPatchNamespace({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required NamespaceWorkerPatchNamespaceRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? WorkersNamespaceResponse.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Delete dispatch namespace
///
/// Delete a Workers for Platforms namespace.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure82>> namespaceWorkerDeleteNamespace({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] as Map<String, dynamic>?;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// List Scripts in Namespace
///
/// Fetch a list of scripts uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts`
Future<ApiResult<List<WorkersNamespaceScriptResponse>, ResponseCommonFailure82>> namespaceWorkerListScripts({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, String? tags, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (tags != null) {
  queryParameters['tags'] = tags;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>).map((e) => WorkersNamespaceScriptResponse.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Delete Scripts in Namespace
///
/// Delete multiple scripts from a Workers for Platforms namespace based on optional tag filters.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts`
Future<ApiResult<WorkersNamespaceScriptDeleteBulkResponse, ResponseCommonFailure82>> namespaceWorkerDeleteScripts({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, String? tags, int? limit, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (tags != null) {
  queryParameters['tags'] = tags;
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  WorkersNamespaceScriptDeleteBulkResponse.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Worker Details
///
/// Fetch information about a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`
Future<ApiResult<WorkersNamespaceScriptResponse, ResponseCommonFailure82>> namespaceWorkerScriptWorkerDetails({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  WorkersNamespaceScriptResponse.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Upload Worker Module
///
/// Upload a worker module to a Workers for Platforms namespace. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`
Future<ApiResult<WorkersScriptResponseUpload, ResponseCommonFailure82>> namespaceWorkerScriptUploadWorkerModule({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersMultipartScriptRequest body, NamespaceWorkerScriptUploadWorkerModuleBindingsInherit? bindingsInherit, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (bindingsInherit != null) {
  queryParameters['bindings_inherit'] = bindingsInherit.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}',
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


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  WorkersScriptResponseUpload.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Delete Worker
///
/// Delete a worker from a Workers for Platforms namespace. This call has no response body on a successful delete.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure82>> namespaceWorkerScriptDeleteWorker({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, bool? force, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (force != null) {
  queryParameters['force'] = force.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] as Map<String, dynamic>?;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Create Assets Upload Session
///
/// Start uploading a collection of assets for use in a Worker version. To learn more about the direct uploads of assets, see https://developers.cloudflare.com/workers/static-assets/direct-upload/.
///
/// `POST /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/assets-upload-session`
Future<ApiResult<WorkersCreateAssetsUploadSessionResponseResult?, ResponseCommonFailure82>> namespaceWorkerScriptUpdateCreateAssetsUploadSession({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersCreateAssetsUploadSessionObject body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/assets-upload-session',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? WorkersCreateAssetsUploadSessionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get Script Bindings
///
/// Fetch script bindings from a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/bindings`
Future<ApiResult<List<WorkersBindingItemResponse>, ResponseCommonFailure82>> namespaceWorkerGetScriptBindings({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/bindings',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>).map((e) => WorkersBindingItemResponse.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get Script Content
///
/// Fetch script content from a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/content`
Future<ApiResult<String, ResponseCommonFailure82>> namespaceWorkerGetScriptContent({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/content',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {return  response.body;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Put Script Content
///
/// Put script content for a script uploaded to a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/content`
Future<ApiResult<WorkersScriptResponse, ResponseCommonFailure82>> namespaceWorkerPutScriptContent({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required NamespaceWorkerPutScriptContentRequest body, String? cfWorkerBodyPart, String? cfWorkerMainModulePart, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfWorkerBodyPart != null) {
  headers['CF-WORKER-BODY-PART'] = cfWorkerBodyPart;
}
if (cfWorkerMainModulePart != null) {
  headers['CF-WORKER-MAIN-MODULE-PART'] = cfWorkerMainModulePart;
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/content',
  headers: headers,
  body: [
    if (body.files case final files$?)
      ApiMultipartField.text('files', files$.toString()),
    ApiMultipartField.text('metadata', body.metadata.toString()),
  ],
  contentType: 'multipart/form-data',
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  WorkersScriptResponse.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// List Script Secrets
///
/// List secrets bound to a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets`
Future<ApiResult<List<WorkersSecretResponse>, ResponseCommonFailure82>> namespaceWorkerListScriptSecrets({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>).map((e) => WorkersSecretResponse.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Add script secret
///
/// Add a secret to a script uploaded to a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets`
Future<ApiResult<WorkersSecretResponse, ResponseCommonFailure82>> namespaceWorkerPutScriptSecrets({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersSecret body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  WorkersSecretResponse.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get secret binding
///
/// Get a given secret binding (value omitted) on a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets/{secret_name}`
Future<ApiResult<WorkersSecretResponse, ResponseCommonFailure82>> namespaceWorkerGetScriptSecrets({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersSecretName secretName, WorkersSecretNameUrlEncoded? urlEncoded, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (urlEncoded != null) {
  queryParameters['url_encoded'] = urlEncoded.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets/${Uri.encodeComponent(secretName.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  WorkersSecretResponse.fromJson(json['result'] as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Delete script secret
///
/// Remove a secret from a script uploaded to a Workers for Platforms namespace.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets/{secret_name}`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure82>> namespaceWorkerDeleteScriptSecret({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersSecretName secretName, WorkersSecretNameUrlEncoded? urlEncoded, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (urlEncoded != null) {
  queryParameters['url_encoded'] = urlEncoded.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets/${Uri.encodeComponent(secretName.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] as Map<String, dynamic>?;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get Script Settings
///
/// Get script settings from a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/settings`
Future<ApiResult<WorkersNamespaceScriptAndVersionSettingsItemResponse?, ResponseCommonFailure82>> namespaceWorkerGetScriptSettings({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/settings',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? WorkersNamespaceScriptAndVersionSettingsItemResponse.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Patch Script Settings
///
/// Patch script metadata, such as bindings.
///
/// `PATCH /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/settings`
Future<ApiResult<WorkersNamespaceScriptAndVersionSettingsItemResponse?, ResponseCommonFailure82>> namespaceWorkerPatchScriptSettings({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required NamespaceWorkerPatchScriptSettingsRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/settings',
  headers: headers,
  body: [
    if (body.settings case final settings$?)
      ApiMultipartField.text('settings', settings$.toString()),
  ],
  contentType: 'multipart/form-data',
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? WorkersNamespaceScriptAndVersionSettingsItemResponse.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get Script Tags
///
/// Fetch tags from a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags`
Future<ApiResult<List<WorkersTag>?, ResponseCommonFailure82>> namespaceWorkerGetScriptTags({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/tags',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>?)?.map((e) => WorkersTag.fromJson(e as String)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Put Script Tags
///
/// Put script tags for a script uploaded to a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags`
Future<ApiResult<List<WorkersTag>, ResponseCommonFailure82>> namespaceWorkerPutScriptTags({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required List<WorkersTag>? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/tags',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>).map((e) => WorkersTag.fromJson(e as String)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Put Script Tag
///
/// Put a single tag on a script uploaded to a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags/{tag}`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure82>> namespaceWorkerPutScriptTag({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersTag tag, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/tags/${Uri.encodeComponent(tag.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] as Map<String, dynamic>?;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Delete Script Tag
///
/// Delete script tag for a script uploaded to a Workers for Platforms namespace.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags/{tag}`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure82>> namespaceWorkerDeleteScriptTag({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersTag tag, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/tags/${Uri.encodeComponent(tag.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] as Map<String, dynamic>?;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  ResponseCommonFailure82.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
