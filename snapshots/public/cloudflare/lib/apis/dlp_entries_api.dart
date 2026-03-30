// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/custom_entry.dart';import '../models/dlp_custom_entry.dart';import '../models/dlp_custom_entry_update.dart';import '../models/dlp_entry.dart';import '../models/dlp_entry_update.dart';import '../models/dlp_entry_with_shared_profiles.dart';import '../models/dlp_entry_with_upload_status.dart';import '../models/dlp_new_entry.dart';import '../models/dlp_predefined_entry.dart';import '../models/dlp_predefined_entry_update.dart';import '../models/document_fingerprint_entry.dart';import '../models/exact_data_entry.dart';import '../models/integration_entry.dart';import '../models/predefined_entry.dart';import '../models/word_list_entry.dart';/// DlpEntriesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpEntriesApi with ApiExecutor {const DlpEntriesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List all entries
///
/// Lists all DLP entries in an account.
///
/// `GET /accounts/{account_id}/dlp/entries`
Future<ApiResult<List<DlpEntryWithUploadStatus>?, Never>> dlpEntriesListAllEntries({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DlpEntryWithUploadStatus.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create custom entry
///
/// Creates a DLP custom entry.
///
/// `POST /accounts/{account_id}/dlp/entries`
Future<ApiResult<DlpCustomEntry?, Never>> dlpEntriesCreateEntry({required String accountId, required DlpNewEntry body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpCustomEntry.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get DLP Entry
///
/// Fetches a DLP entry by ID.
///
/// `GET /accounts/{account_id}/dlp/entries/{entry_id}`
Future<ApiResult<DlpEntryWithSharedProfiles?, Never>> dlpEntriesGetDlpEntry({required String accountId, required String entryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/${Uri.encodeComponent(entryId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpEntryWithSharedProfiles.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update entry
///
/// Updates a DLP entry.
///
/// `PUT /accounts/{account_id}/dlp/entries/{entry_id}`
Future<ApiResult<DlpEntry?, Never>> dlpEntriesUpdateEntry({required String accountId, required String entryId, required DlpEntryUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/${Uri.encodeComponent(entryId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf6.parse(json['result'], fromA: (v) => CustomEntry.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedEntry.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationEntry.fromJson(v as Map<String, dynamic>), fromD: (v) => ExactDataEntry.fromJson(v as Map<String, dynamic>), fromE: (v) => DocumentFingerprintEntry.fromJson(v as Map<String, dynamic>), fromF: (v) => WordListEntry.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Delete custom entry
///
/// Deletes a DLP custom entry.
///
/// `DELETE /accounts/{account_id}/dlp/entries/{entry_id}`
Future<ApiResult<Map<String, dynamic>?, Never>> dlpEntriesDeleteEntry({required String accountId, required String entryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/${Uri.encodeComponent(entryId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
/// Update custom entry
///
/// Updates a DLP custom entry.
///
/// `PUT /accounts/{account_id}/dlp/entries/custom/{entry_id}`
Future<ApiResult<DlpCustomEntry?, Never>> dlpEntriesUpdateCustomEntry({required String accountId, required String entryId, required DlpCustomEntryUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/custom/${Uri.encodeComponent(entryId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpCustomEntry.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update predefined entry
///
/// Updates a DLP entry.
///
/// `PUT /accounts/{account_id}/dlp/entries/predefined/{entry_id}`
Future<ApiResult<DlpPredefinedEntry?, Never>> dlpEntriesUpdatePredefinedEntry({required String accountId, required String entryId, required DlpPredefinedEntryUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/predefined/${Uri.encodeComponent(entryId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpPredefinedEntry.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
