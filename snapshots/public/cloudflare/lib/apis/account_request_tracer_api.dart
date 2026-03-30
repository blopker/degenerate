// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_request_tracer_request_trace_request.dart';import '../models/account_request_tracer_request_trace_response_result.dart';import '../models/request_tracer_identifier.dart';/// AccountRequestTracerApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountRequestTracerApi with ApiExecutor {const AccountRequestTracerApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Request Trace
///
/// `POST /accounts/{account_id}/request-tracer/trace`
Future<ApiResult<AccountRequestTracerRequestTraceResponseResult?, Never>> accountRequestTracerRequestTrace({required RequestTracerIdentifier accountId, required AccountRequestTracerRequestTraceRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/request-tracer/trace',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccountRequestTracerRequestTraceResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
