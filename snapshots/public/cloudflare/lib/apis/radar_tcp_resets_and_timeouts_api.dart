// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_tcp_resets_timeouts_summary_format.dart';import '../models/radar_get_tcp_resets_timeouts_summary_response400.dart';import '../models/radar_get_tcp_resets_timeouts_summary_response_result.dart';import '../models/radar_get_tcp_resets_timeouts_timeseries_group_agg_interval.dart';import '../models/radar_get_tcp_resets_timeouts_timeseries_group_format.dart';import '../models/radar_get_tcp_resets_timeouts_timeseries_group_response400.dart';import '../models/radar_get_tcp_resets_timeouts_timeseries_group_response_result.dart';/// RadarTcpResetsAndTimeoutsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarTcpResetsAndTimeoutsApi with ApiExecutor {const RadarTcpResetsAndTimeoutsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get TCP resets and timeouts summary
///
/// Retrieves the distribution of connection stage by TCP connections terminated within the first 10 packets by a reset or timeout.
///
/// `GET /radar/tcp_resets_timeouts/summary`
Future<ApiResult<RadarGetTcpResetsTimeoutsSummaryResponseResult, RadarGetTcpResetsTimeoutsSummaryResponse400>> radarGetTcpResetsTimeoutsSummary({List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, RadarGetTcpResetsTimeoutsSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/tcp_resets_timeouts/summary',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetTcpResetsTimeoutsSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetTcpResetsTimeoutsSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get TCP resets and timeouts time series
///
/// Retrieves the distribution of connection stage by TCP connections terminated within the first 10 packets by a reset or timeout over time.
///
/// `GET /radar/tcp_resets_timeouts/timeseries_groups`
Future<ApiResult<RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResult, RadarGetTcpResetsTimeoutsTimeseriesGroupResponse400>> radarGetTcpResetsTimeoutsTimeseriesGroup({RadarGetTcpResetsTimeoutsTimeseriesGroupAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, RadarGetTcpResetsTimeoutsTimeseriesGroupFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/tcp_resets_timeouts/timeseries_groups',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetTcpResetsTimeoutsTimeseriesGroupResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
