// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/r2_account_identifier.dart';import '../models/r2_account_level_metrics.dart';import '../models/response_failure.dart';/// R2AccountApi operations.
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
Future<ApiResult<R2AccountLevelMetrics, ResponseFailure>> r2GetAccountLevelMetrics({required R2AccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/metrics',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return R2AccountLevelMetrics.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseFailure.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
