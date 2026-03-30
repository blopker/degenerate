// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_dataset.dart';import '../models/dlp_dataset_column.dart';import '../models/dlp_dataset_creation.dart';import '../models/dlp_dataset_new_version.dart';import '../models/dlp_datasets_create_request.dart';import '../models/dlp_datasets_define_columns_request.dart';import '../models/dlp_datasets_update_request.dart';/// DlpDatasetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpDatasetsApi with ApiExecutor {const DlpDatasetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch all datasets
///
/// `GET /accounts/{account_id}/dlp/datasets`
Future<ApiResult<List<DlpDataset>?, Never>> dlpDatasetsReadAll({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DlpDataset.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a new dataset
///
/// `POST /accounts/{account_id}/dlp/datasets`
Future<ApiResult<DlpDatasetCreation?, Never>> dlpDatasetsCreate({required String accountId, required DlpDatasetsCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDatasetCreation.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Fetch a specific dataset
///
/// `GET /accounts/{account_id}/dlp/datasets/{dataset_id}`
Future<ApiResult<DlpDataset?, Never>> dlpDatasetsRead({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets/${Uri.encodeComponent(datasetId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDataset.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update details about a dataset
///
/// `PUT /accounts/{account_id}/dlp/datasets/{dataset_id}`
Future<ApiResult<DlpDataset?, Never>> dlpDatasetsUpdate({required String accountId, required String datasetId, required DlpDatasetsUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDataset.fromJson(json['result'] as Map<String, dynamic>) : null;
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
Future<ApiResult<DlpDatasetNewVersion?, Never>> dlpDatasetsCreateVersion({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/datasets/${Uri.encodeComponent(datasetId)}/upload',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDatasetNewVersion.fromJson(json['result'] as Map<String, dynamic>) : null;
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
Future<ApiResult<DlpDataset?, Never>> dlpDatasetsUploadVersion({required String accountId, required String datasetId, required int version, required Uint8List body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDataset.fromJson(json['result'] as Map<String, dynamic>) : null;
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
Future<ApiResult<List<DlpDatasetColumn>?, Never>> dlpDatasetsDefineColumns({required String accountId, required String datasetId, required int version, required List<DlpDatasetsDefineColumnsRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DlpDatasetColumn.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Upload a new version of a multi-column dataset
///
/// This is used for multi-column EDMv2 datasets. The EDMv2 format can only be
/// created in the Cloudflare dashboard.
///
/// `POST /accounts/{account_id}/dlp/datasets/{dataset_id}/versions/{version}/entries/{entry_id}`
Future<ApiResult<DlpDatasetColumn?, Never>> dlpDatasetsUploadDatasetColumn({required String accountId, required String datasetId, required int version, required String entryId, required Uint8List body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDatasetColumn.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
