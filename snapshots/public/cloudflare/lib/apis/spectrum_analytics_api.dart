// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/spectrum_analytics_app_id_param.dart';import '../models/spectrum_analytics_by_time_get_analytics_by_time_time_delta.dart';import '../models/spectrum_analytics_dimensions2.dart';import '../models/spectrum_analytics_filters.dart';import '../models/spectrum_analytics_identifier.dart';import '../models/spectrum_analytics_metrics2.dart';import '../models/spectrum_analytics_query_response_aggregate_result.dart';import '../models/spectrum_analytics_query_response_single_result.dart';import '../models/spectrum_analytics_timestamp.dart';/// SpectrumAnalyticsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SpectrumAnalyticsApi with ApiExecutor {const SpectrumAnalyticsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get current aggregated analytics
///
/// Retrieves analytics aggregated from the last minute of usage on Spectrum applications underneath a given zone.
///
/// `GET /zones/{zone_id}/spectrum/analytics/aggregate/current`
Future<ApiResult<List<SpectrumAnalyticsQueryResponseAggregateResult>?, Never>> spectrumAggregateAnalyticsGetCurrentAggregatedAnalytics({required SpectrumAnalyticsIdentifier zoneId, SpectrumAnalyticsAppIdParam? appId, String? coloName, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (appId != null) {
  queryParameters['appID'] = appId.toString();
}
if (coloName != null) {
  queryParameters['colo_name'] = coloName;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/spectrum/analytics/aggregate/current',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => SpectrumAnalyticsQueryResponseAggregateResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get analytics by time
///
/// Retrieves a list of aggregate metrics grouped by time interval.
///
/// `GET /zones/{zone_id}/spectrum/analytics/events/bytime`
Future<ApiResult<SpectrumAnalyticsQueryResponseSingleResult?, Never>> spectrumAnalyticsByTimeGetAnalyticsByTime({required SpectrumAnalyticsIdentifier zoneId, List<SpectrumAnalyticsDimensions2>? dimensions, List<String>? sort, SpectrumAnalyticsTimestamp? until, List<SpectrumAnalyticsMetrics2>? metrics, SpectrumAnalyticsFilters? filters, SpectrumAnalyticsTimestamp? since, required SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta timeDelta, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (dimensions != null) {
for (final item in dimensions) {
  queryParametersList.add(ApiQueryParameter(name: 'dimensions', value: item.toJson()));
}
}
if (sort != null) {
for (final item in sort) {
  queryParametersList.add(ApiQueryParameter(name: 'sort', value: item));
}
}
if (until != null) {
  queryParameters['until'] = until.toString();
}
if (metrics != null) {
for (final item in metrics) {
  queryParametersList.add(ApiQueryParameter(name: 'metrics', value: item.toJson()));
}
}
if (filters != null) {
  queryParameters['filters'] = filters.toString();
}
if (since != null) {
  queryParameters['since'] = since.toString();
}
queryParameters['time_delta'] = timeDelta.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/spectrum/analytics/events/bytime',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SpectrumAnalyticsQueryResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get analytics summary
///
/// Retrieves a list of summarised aggregate metrics over a given time period.
///
/// `GET /zones/{zone_id}/spectrum/analytics/events/summary`
Future<ApiResult<SpectrumAnalyticsQueryResponseSingleResult?, Never>> spectrumAnalyticsSummaryGetAnalyticsSummary({required SpectrumAnalyticsIdentifier zoneId, List<SpectrumAnalyticsDimensions2>? dimensions, List<String>? sort, SpectrumAnalyticsTimestamp? until, List<SpectrumAnalyticsMetrics2>? metrics, SpectrumAnalyticsFilters? filters, SpectrumAnalyticsTimestamp? since, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (dimensions != null) {
for (final item in dimensions) {
  queryParametersList.add(ApiQueryParameter(name: 'dimensions', value: item.toJson()));
}
}
if (sort != null) {
for (final item in sort) {
  queryParametersList.add(ApiQueryParameter(name: 'sort', value: item));
}
}
if (until != null) {
  queryParameters['until'] = until.toString();
}
if (metrics != null) {
for (final item in metrics) {
  queryParametersList.add(ApiQueryParameter(name: 'metrics', value: item.toJson()));
}
}
if (filters != null) {
  queryParameters['filters'] = filters.toString();
}
if (since != null) {
  queryParameters['since'] = since.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/spectrum/analytics/events/summary',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SpectrumAnalyticsQueryResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
