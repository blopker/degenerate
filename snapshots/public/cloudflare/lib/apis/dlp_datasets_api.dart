// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_datasets_create_request.dart';import '../models/dlp_datasets_create_response.dart';import '../models/dlp_datasets_create_version_response.dart';import '../models/dlp_datasets_define_columns_request.dart';import '../models/dlp_datasets_define_columns_response.dart';import '../models/dlp_datasets_read_all_response.dart';import '../models/dlp_datasets_read_response.dart';import '../models/dlp_datasets_update_request.dart';import '../models/dlp_datasets_update_response.dart';import '../models/dlp_datasets_upload_dataset_column_response.dart';import '../models/dlp_datasets_upload_version_response.dart';/// DlpDatasetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpDatasetsApi with ApiExecutor {const DlpDatasetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch all datasets
///
/// `GET /accounts/{account_id}/dlp/datasets`
Future<ApiResult<DlpDatasetsReadAllResponse, Never>> dlpDatasetsReadAll({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDatasetsReadAllResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new dataset
///
/// `POST /accounts/{account_id}/dlp/datasets`
Future<ApiResult<DlpDatasetsCreateResponse, Never>> dlpDatasetsCreate({required String accountId, required DlpDatasetsCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDatasetsCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch a specific dataset
///
/// `GET /accounts/{account_id}/dlp/datasets/{dataset_id}`
Future<ApiResult<DlpDatasetsReadResponse, Never>> dlpDatasetsRead({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets/${Uri.encodeComponent(datasetId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDatasetsReadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update details about a dataset
///
/// `PUT /accounts/{account_id}/dlp/datasets/{dataset_id}`
Future<ApiResult<DlpDatasetsUpdateResponse, Never>> dlpDatasetsUpdate({required String accountId, required String datasetId, required DlpDatasetsUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets/${Uri.encodeComponent(datasetId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDatasetsUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a dataset
///
/// This deletes all versions of the dataset.
///
/// `DELETE /accounts/{account_id}/dlp/datasets/{dataset_id}`
Future<ApiResult<void, Never>> dlpDatasetsDelete({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets/${Uri.encodeComponent(datasetId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Prepare to upload a new version of a dataset
///
/// `POST /accounts/{account_id}/dlp/datasets/{dataset_id}/upload`
Future<ApiResult<DlpDatasetsCreateVersionResponse, Never>> dlpDatasetsCreateVersion({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets/${Uri.encodeComponent(datasetId)}/upload',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDatasetsCreateVersionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Upload a new version of a dataset
///
/// This is used for single-column EDMv1 and Custom Word Lists. The EDM format
/// can only be created in the Cloudflare dashboard. For other clients, this
/// operation can only be used for non-secret Custom Word Lists. The body must
/// be a UTF-8 encoded, newline (NL or CRNL) separated list of words to be matched.
///
/// `POST /accounts/{account_id}/dlp/datasets/{dataset_id}/upload/{version}`
Future<ApiResult<DlpDatasetsUploadVersionResponse, Never>> dlpDatasetsUploadVersion({required String accountId, required String datasetId, required int version, required Uint8List body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/octet-stream';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets/${Uri.encodeComponent(datasetId)}/upload/${Uri.encodeComponent(version.toString())}',
  headers: headers,
  body: body,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDatasetsUploadVersionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Sets the column information for a multi-column upload
///
/// This is used for multi-column EDMv2 datasets. The EDMv2 format can only be
/// created in the Cloudflare dashboard. The columns in the response appear in
/// the same order as in the request.
///
/// `POST /accounts/{account_id}/dlp/datasets/{dataset_id}/versions/{version}`
Future<ApiResult<DlpDatasetsDefineColumnsResponse, Never>> dlpDatasetsDefineColumns({required String accountId, required String datasetId, required int version, required List<DlpDatasetsDefineColumnsRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets/${Uri.encodeComponent(datasetId)}/versions/${Uri.encodeComponent(version.toString())}',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDatasetsDefineColumnsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Upload a new version of a multi-column dataset
///
/// This is used for multi-column EDMv2 datasets. The EDMv2 format can only be
/// created in the Cloudflare dashboard.
///
/// `POST /accounts/{account_id}/dlp/datasets/{dataset_id}/versions/{version}/entries/{entry_id}`
Future<ApiResult<DlpDatasetsUploadDatasetColumnResponse, Never>> dlpDatasetsUploadDatasetColumn({required String accountId, required String datasetId, required int version, required String entryId, required Uint8List body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/octet-stream';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets/${Uri.encodeComponent(datasetId)}/versions/${Uri.encodeComponent(version.toString())}/entries/${Uri.encodeComponent(entryId)}',
  headers: headers,
  body: body,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDatasetsUploadDatasetColumnResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
