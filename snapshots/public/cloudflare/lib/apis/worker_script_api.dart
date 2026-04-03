// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/worker_script_patch_settings_request.dart';import '../models/worker_script_post_subdomain_request.dart';import '../models/worker_script_put_content_request.dart';import '../models/worker_script_search_workers_order_by.dart';import '../models/worker_script_search_workers_response_result.dart';import '../models/worker_script_update_usage_model_request.dart';import '../models/worker_script_upload_worker_module_bindings_inherit.dart';import '../models/workers_completed_upload_assets_response_result.dart';import '../models/workers_create_assets_upload_session_object.dart';import '../models/workers_create_assets_upload_session_response_result.dart';import '../models/workers_identifier.dart';import '../models/workers_multipart_script.dart';import '../models/workers_script_and_version_settings_item.dart';import '../models/workers_script_name.dart';import '../models/workers_script_response.dart';import '../models/workers_script_response_collection_result.dart';import '../models/workers_script_response_upload.dart';import '../models/workers_script_settings_item.dart';import '../models/workers_secret.dart';import '../models/workers_secret_name.dart';import '../models/workers_secret_name_url_encoded.dart';import '../models/workers_subdomain.dart';import '../models/workers_usage_model_response_result.dart';/// WorkerScriptApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkerScriptApi with ApiExecutor {const WorkerScriptApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Upload Assets
///
/// Upload assets ahead of creating a Worker version.  To learn more about the direct uploads of assets, see https://developers.cloudflare.com/workers/static-assets/direct-upload/.
///
/// `POST /accounts/{account_id}/workers/assets/upload`
Future<ApiResult<WorkersCompletedUploadAssetsResponseResult?, Never>> workerAssetsUpload({required WorkersIdentifier accountId, required bool base64, required Map<String,String> body, RequestOptions? options, }) async  { throw UnsupportedError('Cannot encode non-JSON multipart/form-data request body from Map<String, String>');
 } 
/// List Workers
///
/// Fetch a list of uploaded workers.
///
/// `GET /accounts/{account_id}/workers/scripts`
Future<ApiResult<List<WorkersScriptResponseCollectionResult>, Never>> workerScriptListWorkers({required WorkersIdentifier accountId, String? tags, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (tags != null) {
  queryParameters['tags'] = tags;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => WorkersScriptResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Search Workers
///
/// Search for Workers in an account.
///
/// `GET /accounts/{account_id}/workers/scripts-search`
Future<ApiResult<List<WorkerScriptSearchWorkersResponseResult>, Never>> workerScriptSearchWorkers({required WorkersIdentifier accountId, String? name, String? id, WorkerScriptSearchWorkersOrderBy? orderBy, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (id != null) {
  queryParameters['id'] = id;
}
if (orderBy != null) {
  queryParameters['order_by'] = orderBy.toJson();
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts-search',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => WorkerScriptSearchWorkersResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Download Worker
///
/// Fetch raw script content for your worker. Note this is the original script content, not JSON encoded.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}`
Future<ApiResult<Map<String, Uint8List>, Never>> workerScriptDownloadWorker({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    // TODO: Unsupported non-JSON response schema Cannot decode multipart/form-data response into Map<String, Uint8List>
throw UnsupportedError('Cannot decode multipart/form-data response into Map<String, Uint8List>');
  },
);
 } 
/// Upload Worker Module
///
/// Upload a worker module. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.
///
/// `PUT /accounts/{account_id}/workers/scripts/{script_name}`
Future<ApiResult<WorkersScriptResponseUpload, Never>> workerScriptUploadWorkerModule({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkersMultipartScript body, WorkerScriptUploadWorkerModuleBindingsInherit? bindingsInherit, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (bindingsInherit != null) {
  queryParameters['bindings_inherit'] = bindingsInherit.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}',
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
    return WorkersScriptResponseUpload.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Delete Worker
///
/// Delete your worker. This call has no response body on a successful delete.
///
/// `DELETE /accounts/{account_id}/workers/scripts/{script_name}`
Future<ApiResult<Map<String, dynamic>?, Never>> workerScriptDeleteWorker({required WorkersIdentifier accountId, required WorkersScriptName scriptName, bool? force, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (force != null) {
  queryParameters['force'] = force.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
);
 } 
/// Create Assets Upload Session
///
/// Start uploading a collection of assets for use in a Worker version. To learn more about the direct uploads of assets, see https://developers.cloudflare.com/workers/static-assets/direct-upload/.
///
/// `POST /accounts/{account_id}/workers/scripts/{script_name}/assets-upload-session`
Future<ApiResult<WorkersCreateAssetsUploadSessionResponseResult?, Never>> workerScriptUpdateCreateAssetsUploadSession({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkersCreateAssetsUploadSessionObject body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/assets-upload-session',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? WorkersCreateAssetsUploadSessionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Put script content
///
/// Put script content without touching config or metadata.
///
/// `PUT /accounts/{account_id}/workers/scripts/{script_name}/content`
Future<ApiResult<WorkersScriptResponse, Never>> workerScriptPutContent({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkerScriptPutContentRequest body, String? cfWorkerBodyPart, String? cfWorkerMainModulePart, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfWorkerBodyPart != null) {
  headers['CF-WORKER-BODY-PART'] = cfWorkerBodyPart;
}
if (cfWorkerMainModulePart != null) {
  headers['CF-WORKER-MAIN-MODULE-PART'] = cfWorkerMainModulePart;
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/content',
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersScriptResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Get script content
///
/// Fetch script content only.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/content/v2`
Future<ApiResult<String, Never>> workerScriptGetContent({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/content/v2',
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
/// Get Script Settings
///
/// Get script-level settings when using [Worker Versions](https://developers.cloudflare.com/api/operations/worker-versions-list-versions). Includes Logpush and Tail Consumers.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/script-settings`
Future<ApiResult<WorkersScriptSettingsItem, Never>> workerScriptSettingsGetSettings({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/script-settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersScriptSettingsItem.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Patch Script Settings
///
/// Patch script-level settings when using [Worker Versions](https://developers.cloudflare.com/api/operations/worker-versions-list-versions). Including but not limited to Logpush and Tail Consumers.
///
/// `PATCH /accounts/{account_id}/workers/scripts/{script_name}/script-settings`
Future<ApiResult<WorkersScriptSettingsItem, Never>> workerScriptSettingsPatchSettings({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkersScriptSettingsItem body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/script-settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersScriptSettingsItem.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// List script secrets
///
/// List secrets bound to a script.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/secrets`
Future<ApiResult<List<WorkersSecret>?, Never>> workerListScriptSecrets({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => WorkersSecret.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Add script secret
///
/// Add a secret to a script.
///
/// `PUT /accounts/{account_id}/workers/scripts/{script_name}/secrets`
Future<ApiResult<WorkersSecret?, Never>> workerPutScriptSecret({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkersSecret body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? WorkersSecret.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get secret binding
///
/// Get a given secret binding (value omitted) on a script.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/secrets/{secret_name}`
Future<ApiResult<WorkersSecret?, Never>> workerGetScriptSecret({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkersSecretName secretName, WorkersSecretNameUrlEncoded? urlEncoded, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (urlEncoded != null) {
  queryParameters['url_encoded'] = urlEncoded.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets/${Uri.encodeComponent(secretName.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? WorkersSecret.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete script secret
///
/// Remove a secret from a script.
///
/// `DELETE /accounts/{account_id}/workers/scripts/{script_name}/secrets/{secret_name}`
Future<ApiResult<Map<String, dynamic>?, Never>> workerDeleteScriptSecret({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkersSecretName secretName, WorkersSecretNameUrlEncoded? urlEncoded, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (urlEncoded != null) {
  queryParameters['url_encoded'] = urlEncoded.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/secrets/${Uri.encodeComponent(secretName.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
);
 } 
/// Get Settings
///
/// Get metadata and config, such as bindings or usage model.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/settings`
Future<ApiResult<WorkersScriptAndVersionSettingsItem, Never>> workerScriptGetSettings({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersScriptAndVersionSettingsItem.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Patch Settings
///
/// Patch metadata or config, such as bindings or usage model.
///
/// `PATCH /accounts/{account_id}/workers/scripts/{script_name}/settings`
Future<ApiResult<WorkersScriptAndVersionSettingsItem, Never>> workerScriptPatchSettings({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkerScriptPatchSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/settings',
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersScriptAndVersionSettingsItem.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Get Worker subdomain
///
/// Get if the Worker is available on the workers.dev subdomain.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/subdomain`
Future<ApiResult<WorkersSubdomain, Never>> workerScriptGetSubdomain({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/subdomain',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersSubdomain.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Post Worker subdomain
///
/// Enable or disable the Worker on the workers.dev subdomain.
///
/// `POST /accounts/{account_id}/workers/scripts/{script_name}/subdomain`
Future<ApiResult<WorkersSubdomain, Never>> workerScriptPostSubdomain({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkerScriptPostSubdomainRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/subdomain',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersSubdomain.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Delete Worker subdomain
///
/// Disable all workers.dev subdomains for a Worker.
///
/// `DELETE /accounts/{account_id}/workers/scripts/{script_name}/subdomain`
Future<ApiResult<WorkersSubdomain, Never>> workerScriptDeleteSubdomain({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/subdomain',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersSubdomain.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Fetch Usage Model
///
/// Fetches the Usage Model for a given Worker.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/usage-model`
Future<ApiResult<WorkersUsageModelResponseResult, Never>> workerScriptFetchUsageModel({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/usage-model',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersUsageModelResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Update Usage Model
///
/// Updates the Usage Model for a given Worker. Requires a Workers Paid subscription.
///
/// `PUT /accounts/{account_id}/workers/scripts/{script_name}/usage-model`
Future<ApiResult<WorkersUsageModelResponseResult, Never>> workerScriptUpdateUsageModel({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkerScriptUpdateUsageModelRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/usage-model',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersUsageModelResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
 }
