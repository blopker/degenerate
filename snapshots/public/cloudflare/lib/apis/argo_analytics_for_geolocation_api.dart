// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/argo_analytics_identifier.dart';import '../models/argo_analytics_response_single.dart';/// ArgoAnalyticsForGeolocationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ArgoAnalyticsForGeolocationApi with ApiExecutor {const ArgoAnalyticsForGeolocationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Argo Analytics for a zone at different PoPs
///
/// `GET /zones/{zone_id}/analytics/latency/colos`
Future<ApiResult<ArgoAnalyticsResponseSingle, Never>> argoAnalyticsForGeolocationArgoAnalyticsForAZoneAtDifferentPoPs({required ArgoAnalyticsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/analytics/latency/colos',
  headers: headers,
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
