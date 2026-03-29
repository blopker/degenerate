// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/namespace_worker_create_request.dart';import '../models/namespace_worker_patch_namespace_request.dart';import '../models/namespace_worker_patch_script_settings_request.dart';import '../models/namespace_worker_put_namespace_request.dart';import '../models/namespace_worker_put_script_content_request.dart';import '../models/namespace_worker_script_upload_worker_module_bindings_inherit.dart';import '../models/response_common80.dart';import '../models/workers_create_assets_upload_session_object.dart';import '../models/workers_dispatch_namespace_name.dart';import '../models/workers_identifier.dart';import '../models/workers_multipart_script.dart';import '../models/workers_namespace_script_delete_bulk_response.dart';import '../models/workers_script_name.dart';import '../models/workers_secret.dart';import '../models/workers_secret_name.dart';import '../models/workers_secret_name_url_encoded.dart';import '../models/workers_tag.dart';/// WorkersForPlatformsApi operations.
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
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerList({required WorkersIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces',
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
/// Create dispatch namespace
///
/// Create a new Workers for Platforms namespace.
///
/// `POST /accounts/{account_id}/workers/dispatch/namespaces`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerCreate({required WorkersIdentifier accountId, required NamespaceWorkerCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces',
  headers: headers,
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
/// Get dispatch namespace
///
/// Get a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerGetNamespace({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}',
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
/// Update dispatch namespace
///
/// Update a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerPutNamespace({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required NamespaceWorkerPutNamespaceRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}',
  headers: headers,
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
/// Patch dispatch namespace
///
/// Patch a Workers for Platforms namespace. Omitted fields are left unchanged.
///
/// `PATCH /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerPatchNamespace({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required NamespaceWorkerPatchNamespaceRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}',
  headers: headers,
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
/// Delete dispatch namespace
///
/// Delete a Workers for Platforms namespace.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerDeleteNamespace({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}',
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
/// List Scripts in Namespace
///
/// Fetch a list of scripts uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerListScripts({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, String? tags, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Scripts in Namespace
///
/// Delete multiple scripts from a Workers for Platforms namespace based on optional tag filters.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts`
Future<ApiResult<WorkersNamespaceScriptDeleteBulkResponse, Never>> namespaceWorkerDeleteScripts({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, String? tags, int? limit, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return execute(
  request,
  onSuccess: (response) {
    return WorkersNamespaceScriptDeleteBulkResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Worker Details
///
/// Fetch information about a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerScriptWorkerDetails({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}',
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
/// Upload Worker Module
///
/// Upload a worker module to a Workers for Platforms namespace. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerScriptUploadWorkerModule({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, NamespaceWorkerScriptUploadWorkerModuleBindingsInherit? bindingsInherit, required WorkersMultipartScript body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Worker
///
/// Delete a worker from a Workers for Platforms namespace. This call has no response body on a successful delete.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerScriptDeleteWorker({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, bool? force, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Assets Upload Session
///
/// Start uploading a collection of assets for use in a Worker version. To learn more about the direct uploads of assets, see https://developers.cloudflare.com/workers/static-assets/direct-upload/.
///
/// `POST /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/assets-upload-session`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerScriptUpdateCreateAssetsUploadSession({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersCreateAssetsUploadSessionObject body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/assets-upload-session',
  headers: headers,
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
/// Get Script Bindings
///
/// Fetch script bindings from a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/bindings`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerGetScriptBindings({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/bindings',
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
/// Get Script Content
///
/// Fetch script content from a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/content`
Future<ApiResult<String, Never>> namespaceWorkerGetScriptContent({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/content',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return response.body;
  },
);
 } 
/// Put Script Content
///
/// Put script content for a script uploaded to a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/content`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerPutScriptContent({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, String? cfWorkerBodyPart, String? cfWorkerMainModulePart, required NamespaceWorkerPutScriptContentRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Script Secrets
///
/// List secrets bound to a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerListScriptSecrets({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets',
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
/// Add script secret
///
/// Add a secret to a script uploaded to a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerPutScriptSecrets({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersSecret body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets',
  headers: headers,
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
/// Get secret binding
///
/// Get a given secret binding (value omitted) on a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets/{secret_name}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerGetScriptSecrets({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersSecretName secretName, WorkersSecretNameUrlEncoded? urlEncoded, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete script secret
///
/// Remove a secret from a script uploaded to a Workers for Platforms namespace.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets/{secret_name}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerDeleteScriptSecret({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersSecretName secretName, WorkersSecretNameUrlEncoded? urlEncoded, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Script Settings
///
/// Get script settings from a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/settings`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerGetScriptSettings({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/settings',
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
/// Patch Script Settings
///
/// Patch script metadata, such as bindings.
///
/// `PATCH /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/settings`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerPatchScriptSettings({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required NamespaceWorkerPatchScriptSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Script Tags
///
/// Fetch tags from a script uploaded to a Workers for Platforms namespace.
///
/// `GET /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerGetScriptTags({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/tags',
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
/// Put Script Tags
///
/// Put script tags for a script uploaded to a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerPutScriptTags({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required List<WorkersTag>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/tags',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Put Script Tag
///
/// Put a single tag on a script uploaded to a Workers for Platforms namespace.
///
/// `PUT /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags/{tag}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerPutScriptTag({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersTag tag, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/tags/${Uri.encodeComponent(tag.toString())}',
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
/// Delete Script Tag
///
/// Delete script tag for a script uploaded to a Workers for Platforms namespace.
///
/// `DELETE /accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags/{tag}`
Future<ApiResult<ResponseCommon80, Never>> namespaceWorkerDeleteScriptTag({required WorkersIdentifier accountId, required WorkersDispatchNamespaceName dispatchNamespace, required WorkersScriptName scriptName, required WorkersTag tag, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/dispatch/namespaces/${Uri.encodeComponent(dispatchNamespace.toString())}/scripts/${Uri.encodeComponent(scriptName.toString())}/tags/${Uri.encodeComponent(tag.toString())}',
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
