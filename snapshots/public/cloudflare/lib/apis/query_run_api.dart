// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/telemetry_query_request.dart';import '../models/telemetry_query_response400.dart';import '../models/workers_observability_query_results.dart';/// QueryRunApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class QueryRunApi with ApiExecutor {const QueryRunApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Run a query
///
/// Run a temporary or saved query.
///
/// `POST /accounts/{account_id}/workers/observability/telemetry/query`
Future<ApiResult<WorkersObservabilityQueryResults, TelemetryQueryResponse400>> telemetryQuery({required String accountId, required TelemetryQueryRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workers/observability/telemetry/query',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkersObservabilityQueryResults.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return TelemetryQueryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
