// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/argo_analytics_identifier.dart';import '../models/argo_analytics_response_single.dart';/// ArgoAnalyticsForZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ArgoAnalyticsForZoneApi with ApiExecutor {const ArgoAnalyticsForZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Argo Analytics for a zone
///
/// `GET /zones/{zone_id}/analytics/latency`
Future<ApiResult<ArgoAnalyticsResponseSingle, Never>> argoAnalyticsForZoneArgoAnalyticsForAZone({required ArgoAnalyticsIdentifier zoneId, String? bins, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (bins != null) {
  queryParameters['bins'] = bins;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/analytics/latency',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ArgoAnalyticsResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
