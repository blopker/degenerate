// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_custom_entry_update.dart';import '../models/dlp_entries_create_entry_response.dart';import '../models/dlp_entries_delete_entry_response.dart';import '../models/dlp_entries_get_dlp_entry_response.dart';import '../models/dlp_entries_list_all_entries_response.dart';import '../models/dlp_entries_update_custom_entry_response.dart';import '../models/dlp_entries_update_entry_response.dart';import '../models/dlp_entries_update_predefined_entry_response.dart';import '../models/dlp_entry_update.dart';import '../models/dlp_new_entry.dart';import '../models/dlp_predefined_entry_update.dart';/// DlpEntriesApi operations.
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
Future<ApiResult<DlpEntriesListAllEntriesResponse, Never>> dlpEntriesListAllEntries({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEntriesListAllEntriesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create custom entry
///
/// Creates a DLP custom entry.
///
/// `POST /accounts/{account_id}/dlp/entries`
Future<ApiResult<DlpEntriesCreateEntryResponse, Never>> dlpEntriesCreateEntry({required String accountId, required DlpNewEntry body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return DlpEntriesCreateEntryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get DLP Entry
///
/// Fetches a DLP entry by ID.
///
/// `GET /accounts/{account_id}/dlp/entries/{entry_id}`
Future<ApiResult<DlpEntriesGetDlpEntryResponse, Never>> dlpEntriesGetDlpEntry({required String accountId, required String entryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/${Uri.encodeComponent(entryId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEntriesGetDlpEntryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update entry
///
/// Updates a DLP entry.
///
/// `PUT /accounts/{account_id}/dlp/entries/{entry_id}`
Future<ApiResult<DlpEntriesUpdateEntryResponse, Never>> dlpEntriesUpdateEntry({required String accountId, required String entryId, required DlpEntryUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return DlpEntriesUpdateEntryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete custom entry
///
/// Deletes a DLP custom entry.
///
/// `DELETE /accounts/{account_id}/dlp/entries/{entry_id}`
Future<ApiResult<DlpEntriesDeleteEntryResponse, Never>> dlpEntriesDeleteEntry({required String accountId, required String entryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/${Uri.encodeComponent(entryId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEntriesDeleteEntryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update custom entry
///
/// Updates a DLP custom entry.
///
/// `PUT /accounts/{account_id}/dlp/entries/custom/{entry_id}`
Future<ApiResult<DlpEntriesUpdateCustomEntryResponse, Never>> dlpEntriesUpdateCustomEntry({required String accountId, required String entryId, required DlpCustomEntryUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return DlpEntriesUpdateCustomEntryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update predefined entry
///
/// Updates a DLP entry.
///
/// `PUT /accounts/{account_id}/dlp/entries/predefined/{entry_id}`
Future<ApiResult<DlpEntriesUpdatePredefinedEntryResponse, Never>> dlpEntriesUpdatePredefinedEntry({required String accountId, required String entryId, required DlpPredefinedEntryUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return DlpEntriesUpdatePredefinedEntryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
