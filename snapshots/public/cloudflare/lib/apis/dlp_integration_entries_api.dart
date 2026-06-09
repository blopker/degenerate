// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_integration_entry.dart';import '../models/dlp_new_predefined_entry.dart';import '../models/dlp_predefined_entry_update.dart';import '../models/response_common_failure25.dart';/// DlpIntegrationEntriesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpIntegrationEntriesApi with ApiExecutor {const DlpIntegrationEntriesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create integration entry
///
/// Integration entries can't be created, this will update an existing integration entry.
/// This is needed for our generated terraform API.
///
/// `POST /accounts/{account_id}/dlp/entries/integration`
Future<ApiResult<DlpIntegrationEntry?, ResponseCommonFailure25>> dlpEntriesCreateIntegrationEntry({required String accountId, required DlpNewPredefinedEntry body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/integration',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpIntegrationEntry.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure25.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update integration entry
///
/// Updates a DLP entry.
///
/// `PUT /accounts/{account_id}/dlp/entries/integration/{entry_id}`
Future<ApiResult<DlpIntegrationEntry?, ResponseCommonFailure25>> dlpEntriesUpdateIntegrationEntry({required String accountId, required String entryId, required DlpPredefinedEntryUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/integration/${Uri.encodeComponent(entryId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpIntegrationEntry.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure25.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete integration entry
///
/// This is a no-op as integration entires can't be deleted but is needed for our generated terraform API.
///
/// `DELETE /accounts/{account_id}/dlp/entries/integration/{entry_id}`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure25>> dlpEntriesDeleteIntegrationEntry({required String accountId, required String entryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/entries/integration/${Uri.encodeComponent(entryId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
    return ResponseCommonFailure25.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
