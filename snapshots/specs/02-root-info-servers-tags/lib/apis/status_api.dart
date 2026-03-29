// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'package:degenerate_runtime/degenerate_runtime.dart';/// StatusApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class StatusApi with ApiExecutor {const StatusApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get service status
///
/// `GET /status`
Future<ApiResult<void, Never>> getStatus({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/status',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
