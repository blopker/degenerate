// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_entries_create_predefined_entry_response.dart';import '../models/dlp_entries_delete_predefined_entry_response.dart';import '../models/dlp_new_predefined_entry.dart';/// DlpPredefinedEntriesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpPredefinedEntriesApi with ApiExecutor {const DlpPredefinedEntriesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create predefined entry
///
/// Predefined entries can't be created, this will update an existing predefined entry.
/// This is needed for our generated terraform API.
///
/// `POST /accounts/{account_id}/dlp/entries/predefined`
Future<ApiResult<DlpEntriesCreatePredefinedEntryResponse, Never>> dlpEntriesCreatePredefinedEntry({required String accountId, required DlpNewPredefinedEntry body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/predefined',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEntriesCreatePredefinedEntryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete predefined entry
///
/// This is a no-op as predefined entires can't be deleted but is needed for our generated terraform API.
///
/// `DELETE /accounts/{account_id}/dlp/entries/predefined/{entry_id}`
Future<ApiResult<DlpEntriesDeletePredefinedEntryResponse, Never>> dlpEntriesDeletePredefinedEntry({required String accountId, required String entryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/predefined/${Uri.encodeComponent(entryId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpEntriesDeletePredefinedEntryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
