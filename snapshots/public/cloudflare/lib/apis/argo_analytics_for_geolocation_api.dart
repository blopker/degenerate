// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/argo_analytics_for_geolocation_argo_analytics_for_a_zone_at_different_po_ps_response4_xx.dart';import '../models/argo_analytics_identifier.dart';/// ArgoAnalyticsForGeolocationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ArgoAnalyticsForGeolocationApi with ApiExecutor {const ArgoAnalyticsForGeolocationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Argo Analytics for a zone at different PoPs
///
/// `GET /zones/{zone_id}/analytics/latency/colos`
Future<ApiResult<Map<String, dynamic>, ArgoAnalyticsForGeolocationArgoAnalyticsForAZoneAtDifferentPoPsResponse4Xx>> argoAnalyticsForGeolocationArgoAnalyticsForAZoneAtDifferentPoPs({required ArgoAnalyticsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/analytics/latency/colos',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ArgoAnalyticsForGeolocationArgoAnalyticsForAZoneAtDifferentPoPsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
