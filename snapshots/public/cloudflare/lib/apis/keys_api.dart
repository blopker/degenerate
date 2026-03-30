// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/telemetry_keys_list_request.dart';import '../models/telemetry_keys_list_response401.dart';import '../models/telemetry_keys_list_response_result.dart';/// KeysApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class KeysApi with ApiExecutor {const KeysApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List keys
///
/// List all the keys in your telemetry events.
///
/// `POST /accounts/{account_id}/workers/observability/telemetry/keys`
Future<ApiResult<List<TelemetryKeysListResponseResult>, TelemetryKeysListResponse401>> telemetryKeysList({required String accountId, required TelemetryKeysListRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workers/observability/telemetry/keys',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => TelemetryKeysListResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return TelemetryKeysListResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
