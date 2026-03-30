// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/diagnostics_traceroute_request.dart';import '../models/magic_transit_identifier.dart';import '../models/magic_transit_traceroute_response_collection.dart';/// DiagnosticsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DiagnosticsApi with ApiExecutor {const DiagnosticsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Traceroute
///
/// Run traceroutes from Cloudflare colos.
///
/// `POST /accounts/{account_id}/diagnostics/traceroute`
Future<ApiResult<MagicTransitTracerouteResponseCollection, Never>> diagnosticsTraceroute({required MagicTransitIdentifier accountId, required DiagnosticsTracerouteRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/diagnostics/traceroute',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicTransitTracerouteResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
