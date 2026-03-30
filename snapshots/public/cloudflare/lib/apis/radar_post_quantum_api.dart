// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_origin_post_quantum_summary_dimension.dart';import '../models/radar_get_origin_post_quantum_summary_format.dart';import '../models/radar_get_origin_post_quantum_summary_response400.dart';import '../models/radar_get_origin_post_quantum_summary_response_result.dart';import '../models/radar_get_origin_post_quantum_timeseries_groups_dimension.dart';import '../models/radar_get_origin_post_quantum_timeseries_groups_format.dart';import '../models/radar_get_origin_post_quantum_timeseries_groups_response400.dart';import '../models/radar_get_origin_post_quantum_timeseries_groups_response_result.dart';import '../models/radar_get_post_quantum_tls_support_response400.dart';import '../models/radar_get_post_quantum_tls_support_response_result.dart';/// RadarPostQuantumApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarPostQuantumApi with ApiExecutor {const RadarPostQuantumApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Origin Post-Quantum Data Summary
///
/// Returns a summary of origin post-quantum data grouped by the specified dimension.
///
/// `GET /radar/post_quantum/origin/summary/{dimension}`
Future<ApiResult<RadarGetOriginPostQuantumSummaryResponseResult, RadarGetOriginPostQuantumSummaryResponse400>> radarGetOriginPostQuantumSummary({required RadarGetOriginPostQuantumSummaryDimension dimension, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, RadarGetOriginPostQuantumSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
for (final item in name) {
  queryParametersList.add(ApiQueryParameter(name: 'name', value: item, allowReserved: false));
}
}
if (dateRange != null) {
for (final item in dateRange) {
  queryParametersList.add(ApiQueryParameter(name: 'dateRange', value: item, allowReserved: false));
}
}
if (dateStart != null) {
for (final item in dateStart) {
  queryParametersList.add(ApiQueryParameter(name: 'dateStart', value: item.toIso8601String(), allowReserved: false));
}
}
if (dateEnd != null) {
for (final item in dateEnd) {
  queryParametersList.add(ApiQueryParameter(name: 'dateEnd', value: item.toIso8601String(), allowReserved: false));
}
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/post_quantum/origin/summary/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetOriginPostQuantumSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetOriginPostQuantumSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Origin Post-Quantum Data Over Time
///
/// Returns a timeseries of origin post-quantum data grouped by the specified dimension.
///
/// `GET /radar/post_quantum/origin/timeseries_groups/{dimension}`
Future<ApiResult<RadarGetOriginPostQuantumTimeseriesGroupsResponseResult, RadarGetOriginPostQuantumTimeseriesGroupsResponse400>> radarGetOriginPostQuantumTimeseriesGroups({required RadarGetOriginPostQuantumTimeseriesGroupsDimension dimension, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, RadarGetOriginPostQuantumTimeseriesGroupsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
for (final item in name) {
  queryParametersList.add(ApiQueryParameter(name: 'name', value: item, allowReserved: false));
}
}
if (dateRange != null) {
for (final item in dateRange) {
  queryParametersList.add(ApiQueryParameter(name: 'dateRange', value: item, allowReserved: false));
}
}
if (dateStart != null) {
for (final item in dateStart) {
  queryParametersList.add(ApiQueryParameter(name: 'dateStart', value: item.toIso8601String(), allowReserved: false));
}
}
if (dateEnd != null) {
for (final item in dateEnd) {
  queryParametersList.add(ApiQueryParameter(name: 'dateEnd', value: item.toIso8601String(), allowReserved: false));
}
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/post_quantum/origin/timeseries_groups/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetOriginPostQuantumTimeseriesGroupsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetOriginPostQuantumTimeseriesGroupsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Check Post-Quantum TLS support
///
/// Tests whether a hostname or IP address supports Post-Quantum (PQ) TLS key exchange. Returns information about the negotiated key exchange algorithm and whether it uses PQ cryptography.
///
/// `GET /radar/post_quantum/tls/support`
Future<ApiResult<RadarGetPostQuantumTlsSupportResponseResult, RadarGetPostQuantumTlsSupportResponse400>> radarGetPostQuantumTlsSupport({required String host, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['host'] = host;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/post_quantum/tls/support',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetPostQuantumTlsSupportResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetPostQuantumTlsSupportResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
