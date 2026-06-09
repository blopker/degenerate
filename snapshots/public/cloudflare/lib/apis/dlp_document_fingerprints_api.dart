// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_document_fingerprint.dart';import '../models/dlp_document_fingerprint_upload.dart';import '../models/dlp_document_fingerprints_create_request.dart';import '../models/dlp_document_fingerprints_upload_request.dart';import '../models/dlp_update_document_fingerprint.dart';import '../models/response_common_failure25.dart';/// DlpDocumentFingerprintsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpDocumentFingerprintsApi with ApiExecutor {const DlpDocumentFingerprintsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve data about all document fingerprints.
///
/// `GET /accounts/{account_id}/dlp/document_fingerprints`
Future<ApiResult<List<DlpDocumentFingerprint>?, ResponseCommonFailure25>> dlpDocumentFingerprintsReadAll({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/document_fingerprints',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DlpDocumentFingerprint.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ResponseCommonFailure25.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates a new document fingerprint.
///
/// `POST /accounts/{account_id}/dlp/document_fingerprints`
Future<ApiResult<DlpDocumentFingerprint?, ResponseCommonFailure25>> dlpDocumentFingerprintsCreate({required String accountId, required DlpDocumentFingerprintsCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDocumentFingerprint.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure25.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieve data about a specific document fingerprint.
///
/// `GET /accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`
Future<ApiResult<DlpDocumentFingerprint?, ResponseCommonFailure25>> dlpDocumentFingerprintsRead({required String accountId, required String documentFingerprintId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/document_fingerprints/${Uri.encodeComponent(documentFingerprintId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDocumentFingerprint.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure25.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update the attributes of a single document fingerprint.
///
/// `POST /accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`
Future<ApiResult<DlpDocumentFingerprint?, ResponseCommonFailure25>> dlpDocumentFingerprintsUpdate({required String accountId, required String documentFingerprintId, required DlpUpdateDocumentFingerprint body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDocumentFingerprint.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure25.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Uploads a new version for a document fingerprint.
///
/// `PUT /accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`
Future<ApiResult<DlpDocumentFingerprintUpload?, ResponseCommonFailure25>> dlpDocumentFingerprintsUpload({required String accountId, required String documentFingerprintId, required DlpDocumentFingerprintsUploadRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDocumentFingerprintUpload.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure25.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a single document fingerprint.
///
/// `DELETE /accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`
Future<ApiResult<void, ResponseCommonFailure25>> dlpDocumentFingerprintsDelete({required String accountId, required String documentFingerprintId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/document_fingerprints/${Uri.encodeComponent(documentFingerprintId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ResponseCommonFailure25.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
