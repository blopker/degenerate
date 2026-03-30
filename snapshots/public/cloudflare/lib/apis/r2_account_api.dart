// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/r2_account_identifier.dart';/// R2AccountApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class R2AccountApi with ApiExecutor {const R2AccountApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Account-Level Metrics
///
/// Get Storage/Object Count Metrics across all buckets in your account. Note that Account-Level Metrics may not immediately reflect the latest data.
///
/// `GET /accounts/{account_id}/r2/metrics`
Future<ApiResult<Map<String, dynamic>, Never>> r2GetAccountLevelMetrics({required R2AccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/metrics',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v));
  },
);
 } 
 }
