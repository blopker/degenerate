// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_quality_index_summary_format.dart';import '../models/radar_get_quality_index_summary_metric.dart';import '../models/radar_get_quality_index_summary_response400.dart';import '../models/radar_get_quality_index_summary_response_result.dart';import '../models/radar_get_quality_index_timeseries_group_agg_interval.dart';import '../models/radar_get_quality_index_timeseries_group_format.dart';import '../models/radar_get_quality_index_timeseries_group_metric.dart';import '../models/radar_get_quality_index_timeseries_group_response400.dart';import '../models/radar_get_quality_index_timeseries_group_response_result.dart';import '../models/radar_get_quality_speed_histogram_format.dart';import '../models/radar_get_quality_speed_histogram_metric_group.dart';import '../models/radar_get_quality_speed_histogram_response400.dart';import '../models/radar_get_quality_speed_histogram_response_result.dart';import '../models/radar_get_quality_speed_summary_format.dart';import '../models/radar_get_quality_speed_summary_response400.dart';import '../models/radar_get_quality_speed_summary_response_result.dart';import '../models/radar_get_quality_speed_top_ases_format.dart';import '../models/radar_get_quality_speed_top_ases_order_by.dart';import '../models/radar_get_quality_speed_top_ases_response404.dart';import '../models/radar_get_quality_speed_top_ases_response_result.dart';import '../models/radar_get_quality_speed_top_locations_format.dart';import '../models/radar_get_quality_speed_top_locations_order_by.dart';import '../models/radar_get_quality_speed_top_locations_response404.dart';import '../models/radar_get_quality_speed_top_locations_response_result.dart';/// RadarQualityApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarQualityApi with ApiExecutor {const RadarQualityApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Internet Quality Index (IQI) summary
///
/// Retrieves a summary (percentiles) of bandwidth, latency, or DNS response time from the Radar Internet Quality Index (IQI).
///
/// `GET /radar/quality/iqi/summary`
Future<ApiResult<RadarGetQualityIndexSummaryResponseResult, RadarGetQualityIndexSummaryResponse400>> radarGetQualityIndexSummary({List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, required RadarGetQualityIndexSummaryMetric metric, RadarGetQualityIndexSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
for (final item in name) {
  queryParametersList.add(ApiQueryParameter(name: 'name', value: item));
}
}
if (dateRange != null) {
for (final item in dateRange) {
  queryParametersList.add(ApiQueryParameter(name: 'dateRange', value: item));
}
}
if (dateStart != null) {
for (final item in dateStart) {
  queryParametersList.add(ApiQueryParameter(name: 'dateStart', value: item.toIso8601String()));
}
}
if (dateEnd != null) {
for (final item in dateEnd) {
  queryParametersList.add(ApiQueryParameter(name: 'dateEnd', value: item.toIso8601String()));
}
}
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item));
}
}
queryParameters['metric'] = metric.toJson();
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/quality/iqi/summary',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetQualityIndexSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetQualityIndexSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Internet Quality Index (IQI) time series
///
/// Retrieves a time series (percentiles) of bandwidth, latency, or DNS response time from the Radar Internet Quality Index (IQI).
///
/// `GET /radar/quality/iqi/timeseries_groups`
Future<ApiResult<RadarGetQualityIndexTimeseriesGroupResponseResult, RadarGetQualityIndexTimeseriesGroupResponse400>> radarGetQualityIndexTimeseriesGroup({RadarGetQualityIndexTimeseriesGroupAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, bool? interpolation, required RadarGetQualityIndexTimeseriesGroupMetric metric, RadarGetQualityIndexTimeseriesGroupFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (aggInterval != null) {
  queryParameters['aggInterval'] = aggInterval.toJson();
}
if (name != null) {
for (final item in name) {
  queryParametersList.add(ApiQueryParameter(name: 'name', value: item));
}
}
if (dateRange != null) {
for (final item in dateRange) {
  queryParametersList.add(ApiQueryParameter(name: 'dateRange', value: item));
}
}
if (dateStart != null) {
for (final item in dateStart) {
  queryParametersList.add(ApiQueryParameter(name: 'dateStart', value: item.toIso8601String()));
}
}
if (dateEnd != null) {
for (final item in dateEnd) {
  queryParametersList.add(ApiQueryParameter(name: 'dateEnd', value: item.toIso8601String()));
}
}
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item));
}
}
if (interpolation != null) {
  queryParameters['interpolation'] = interpolation.toString();
}
queryParameters['metric'] = metric.toJson();
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/quality/iqi/timeseries_groups',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetQualityIndexTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetQualityIndexTimeseriesGroupResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get speed tests histogram
///
/// Retrieves a histogram from the previous 90 days of Cloudflare Speed Test data, split into fixed bandwidth (Mbps), latency (ms), or jitter (ms) buckets.
///
/// `GET /radar/quality/speed/histogram`
Future<ApiResult<RadarGetQualitySpeedHistogramResponseResult, RadarGetQualitySpeedHistogramResponse400>> radarGetQualitySpeedHistogram({List<String>? name, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, int? bucketSize, RadarGetQualitySpeedHistogramMetricGroup? metricGroup, RadarGetQualitySpeedHistogramFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
for (final item in name) {
  queryParametersList.add(ApiQueryParameter(name: 'name', value: item));
}
}
if (dateEnd != null) {
for (final item in dateEnd) {
  queryParametersList.add(ApiQueryParameter(name: 'dateEnd', value: item.toIso8601String()));
}
}
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item));
}
}
if (bucketSize != null) {
  queryParameters['bucketSize'] = bucketSize.toString();
}
if (metricGroup != null) {
  queryParameters['metricGroup'] = metricGroup.toJson();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/quality/speed/histogram',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetQualitySpeedHistogramResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetQualitySpeedHistogramResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get speed tests summary
///
/// Retrieves a summary of bandwidth, latency, jitter, and packet loss, from the previous 90 days of Cloudflare Speed Test data.
///
/// `GET /radar/quality/speed/summary`
Future<ApiResult<RadarGetQualitySpeedSummaryResponseResult, RadarGetQualitySpeedSummaryResponse400>> radarGetQualitySpeedSummary({List<String>? name, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, RadarGetQualitySpeedSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
for (final item in name) {
  queryParametersList.add(ApiQueryParameter(name: 'name', value: item));
}
}
if (dateEnd != null) {
for (final item in dateEnd) {
  queryParametersList.add(ApiQueryParameter(name: 'dateEnd', value: item.toIso8601String()));
}
}
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item));
}
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/quality/speed/summary',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetQualitySpeedSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetQualitySpeedSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get top ASes by speed test results
///
/// Retrieves the top autonomous systems by bandwidth, latency, jitter, or packet loss, from the previous 90 days of Cloudflare Speed Test data.
///
/// `GET /radar/quality/speed/top/ases`
Future<ApiResult<RadarGetQualitySpeedTopAsesResponseResult, RadarGetQualitySpeedTopAsesResponse404>> radarGetQualitySpeedTopAses({int? limit, List<String>? name, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, RadarGetQualitySpeedTopAsesOrderBy? orderBy, bool? reverse, RadarGetQualitySpeedTopAsesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (name != null) {
for (final item in name) {
  queryParametersList.add(ApiQueryParameter(name: 'name', value: item));
}
}
if (dateEnd != null) {
for (final item in dateEnd) {
  queryParametersList.add(ApiQueryParameter(name: 'dateEnd', value: item.toIso8601String()));
}
}
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item));
}
}
if (orderBy != null) {
  queryParameters['orderBy'] = orderBy.toJson();
}
if (reverse != null) {
  queryParameters['reverse'] = reverse.toString();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/quality/speed/top/ases',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetQualitySpeedTopAsesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetQualitySpeedTopAsesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get top locations by speed test results
///
/// Retrieves the top locations by bandwidth, latency, jitter, or packet loss, from the previous 90 days of Cloudflare Speed Test data.
///
/// `GET /radar/quality/speed/top/locations`
Future<ApiResult<RadarGetQualitySpeedTopLocationsResponseResult, RadarGetQualitySpeedTopLocationsResponse404>> radarGetQualitySpeedTopLocations({int? limit, List<String>? name, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, RadarGetQualitySpeedTopLocationsOrderBy? orderBy, bool? reverse, RadarGetQualitySpeedTopLocationsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (name != null) {
for (final item in name) {
  queryParametersList.add(ApiQueryParameter(name: 'name', value: item));
}
}
if (dateEnd != null) {
for (final item in dateEnd) {
  queryParametersList.add(ApiQueryParameter(name: 'dateEnd', value: item.toIso8601String()));
}
}
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item));
}
}
if (orderBy != null) {
  queryParameters['orderBy'] = orderBy.toJson();
}
if (reverse != null) {
  queryParameters['reverse'] = reverse.toString();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/quality/speed/top/locations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetQualitySpeedTopLocationsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetQualitySpeedTopLocationsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
