// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_document_fingerprints_create_request.dart';import '../models/dlp_document_fingerprints_create_response.dart';import '../models/dlp_document_fingerprints_read_all_response.dart';import '../models/dlp_document_fingerprints_read_response.dart';import '../models/dlp_document_fingerprints_update_response.dart';import '../models/dlp_document_fingerprints_upload_request.dart';import '../models/dlp_document_fingerprints_upload_response.dart';import '../models/dlp_update_document_fingerprint.dart';/// DlpDocumentFingerprintsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpDocumentFingerprintsApi with ApiExecutor {const DlpDocumentFingerprintsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve data about all document fingerprints.
///
/// `GET /accounts/{account_id}/dlp/document_fingerprints`
Future<ApiResult<DlpDocumentFingerprintsReadAllResponse, Never>> dlpDocumentFingerprintsReadAll({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/document_fingerprints',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDocumentFingerprintsReadAllResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates a new document fingerprint.
///
/// `POST /accounts/{account_id}/dlp/document_fingerprints`
Future<ApiResult<DlpDocumentFingerprintsCreateResponse, Never>> dlpDocumentFingerprintsCreate({required String accountId, required DlpDocumentFingerprintsCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/document_fingerprints',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDocumentFingerprintsCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieve data about a specific document fingerprint.
///
/// `GET /accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`
Future<ApiResult<DlpDocumentFingerprintsReadResponse, Never>> dlpDocumentFingerprintsRead({required String accountId, required String documentFingerprintId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/document_fingerprints/${Uri.encodeComponent(documentFingerprintId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDocumentFingerprintsReadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update the attributes of a single document fingerprint.
///
/// `POST /accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`
Future<ApiResult<DlpDocumentFingerprintsUpdateResponse, Never>> dlpDocumentFingerprintsUpdate({required String accountId, required String documentFingerprintId, required DlpUpdateDocumentFingerprint body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/document_fingerprints/${Uri.encodeComponent(documentFingerprintId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDocumentFingerprintsUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Uploads a new version for a document fingerprint.
///
/// `PUT /accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`
Future<ApiResult<DlpDocumentFingerprintsUploadResponse, Never>> dlpDocumentFingerprintsUpload({required String accountId, required String documentFingerprintId, required DlpDocumentFingerprintsUploadRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/document_fingerprints/${Uri.encodeComponent(documentFingerprintId)}',
  headers: headers,
  body: [
    ApiMultipartField.file('file', body.file),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpDocumentFingerprintsUploadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a single document fingerprint.
///
/// `DELETE /accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`
Future<ApiResult<void, Never>> dlpDocumentFingerprintsDelete({required String accountId, required String documentFingerprintId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/document_fingerprints/${Uri.encodeComponent(documentFingerprintId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
