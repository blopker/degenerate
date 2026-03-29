// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_netflows_summary_dimension.dart';import '../models/radar_get_netflows_summary_format.dart';import '../models/radar_get_netflows_summary_product.dart';import '../models/radar_get_netflows_summary_response.dart';import '../models/radar_get_netflows_summary_response400.dart';import '../models/radar_get_netflows_timeseries_agg_interval.dart';import '../models/radar_get_netflows_timeseries_format.dart';import '../models/radar_get_netflows_timeseries_group_agg_interval.dart';import '../models/radar_get_netflows_timeseries_group_dimension.dart';import '../models/radar_get_netflows_timeseries_group_format.dart';import '../models/radar_get_netflows_timeseries_group_normalization.dart';import '../models/radar_get_netflows_timeseries_group_product.dart';import '../models/radar_get_netflows_timeseries_group_response.dart';import '../models/radar_get_netflows_timeseries_group_response400.dart';import '../models/radar_get_netflows_timeseries_normalization.dart';import '../models/radar_get_netflows_timeseries_product.dart';import '../models/radar_get_netflows_timeseries_response.dart';import '../models/radar_get_netflows_timeseries_response400.dart';import '../models/radar_get_netflows_top_ases_format.dart';import '../models/radar_get_netflows_top_ases_response.dart';import '../models/radar_get_netflows_top_ases_response404.dart';import '../models/radar_get_netflows_top_locations_format.dart';import '../models/radar_get_netflows_top_locations_response.dart';import '../models/radar_get_netflows_top_locations_response404.dart';/// RadarNetFlowsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarNetFlowsApi with ApiExecutor {const RadarNetFlowsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get network traffic distribution by dimension
///
/// Retrieves the distribution of network traffic (NetFlows) by the specified dimension.
///
/// `GET /radar/netflows/summary/{dimension}`
Future<ApiResult<RadarGetNetflowsSummaryResponse, RadarGetNetflowsSummaryResponse400>> radarGetNetflowsSummary({required RadarGetNetflowsSummaryDimension dimension, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<String>? geoId, List<RadarGetNetflowsSummaryProduct>? product, int? limitPerGroup, RadarGetNetflowsSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item, allowReserved: false));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item, allowReserved: false));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item, allowReserved: false));
}
}
if (geoId != null) {
for (final item in geoId) {
  queryParametersList.add(ApiQueryParameter(name: 'geoId', value: item, allowReserved: false));
}
}
if (product != null) {
for (final item in product) {
  queryParametersList.add(ApiQueryParameter(name: 'product', value: item.toJson(), allowReserved: false));
}
}
if (limitPerGroup != null) queryParameters['limitPerGroup'] = limitPerGroup.toString();
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/netflows/summary/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetNetflowsSummaryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetNetflowsSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get network traffic time series
///
/// Retrieves network traffic (NetFlows) over time.
///
/// `GET /radar/netflows/timeseries`
Future<ApiResult<RadarGetNetflowsTimeseriesResponse, RadarGetNetflowsTimeseriesResponse400>> radarGetNetflowsTimeseries({RadarGetNetflowsTimeseriesAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<RadarGetNetflowsTimeseriesProduct>? product, List<String>? asn, List<String>? location, List<String>? continent, List<String>? geoId, RadarGetNetflowsTimeseriesNormalization? normalization, RadarGetNetflowsTimeseriesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (aggInterval != null) queryParameters['aggInterval'] = aggInterval.toJson();
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
if (product != null) {
for (final item in product) {
  queryParametersList.add(ApiQueryParameter(name: 'product', value: item.toJson(), allowReserved: false));
}
}
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item, allowReserved: false));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item, allowReserved: false));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item, allowReserved: false));
}
}
if (geoId != null) {
for (final item in geoId) {
  queryParametersList.add(ApiQueryParameter(name: 'geoId', value: item, allowReserved: false));
}
}
if (normalization != null) queryParameters['normalization'] = normalization.toJson();
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/netflows/timeseries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetNetflowsTimeseriesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetNetflowsTimeseriesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get time series distribution of network traffic by dimension
///
/// Retrieves the distribution of NetFlows traffic, grouped by the specified dimension over time.
///
/// `GET /radar/netflows/timeseries_groups/{dimension}`
Future<ApiResult<RadarGetNetflowsTimeseriesGroupResponse, RadarGetNetflowsTimeseriesGroupResponse400>> radarGetNetflowsTimeseriesGroup({required RadarGetNetflowsTimeseriesGroupDimension dimension, RadarGetNetflowsTimeseriesGroupAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<String>? geoId, int? limitPerGroup, RadarGetNetflowsTimeseriesGroupNormalization? normalization, List<RadarGetNetflowsTimeseriesGroupProduct>? product, RadarGetNetflowsTimeseriesGroupFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (aggInterval != null) queryParameters['aggInterval'] = aggInterval.toJson();
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
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item, allowReserved: false));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item, allowReserved: false));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item, allowReserved: false));
}
}
if (geoId != null) {
for (final item in geoId) {
  queryParametersList.add(ApiQueryParameter(name: 'geoId', value: item, allowReserved: false));
}
}
if (limitPerGroup != null) queryParameters['limitPerGroup'] = limitPerGroup.toString();
if (normalization != null) queryParameters['normalization'] = normalization.toJson();
if (product != null) {
for (final item in product) {
  queryParametersList.add(ApiQueryParameter(name: 'product', value: item.toJson(), allowReserved: false));
}
}
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/netflows/timeseries_groups/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetNetflowsTimeseriesGroupResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetNetflowsTimeseriesGroupResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get top ASes by network traffic
///
/// Retrieves the top autonomous systems by network traffic (NetFlows).
///
/// `GET /radar/netflows/top/ases`
Future<ApiResult<RadarGetNetflowsTopAsesResponse, RadarGetNetflowsTopAsesResponse404>> radarGetNetflowsTopAses({int? limit, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<String>? geoId, RadarGetNetflowsTopAsesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) queryParameters['limit'] = limit.toString();
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
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item, allowReserved: false));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item, allowReserved: false));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item, allowReserved: false));
}
}
if (geoId != null) {
for (final item in geoId) {
  queryParametersList.add(ApiQueryParameter(name: 'geoId', value: item, allowReserved: false));
}
}
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/netflows/top/ases',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetNetflowsTopAsesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetNetflowsTopAsesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get top locations by network traffic
///
/// Retrieves the top locations by network traffic (NetFlows).
///
/// `GET /radar/netflows/top/locations`
Future<ApiResult<RadarGetNetflowsTopLocationsResponse, RadarGetNetflowsTopLocationsResponse404>> radarGetNetflowsTopLocations({int? limit, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<String>? geoId, RadarGetNetflowsTopLocationsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) queryParameters['limit'] = limit.toString();
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
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item, allowReserved: false));
}
}
if (location != null) {
for (final item in location) {
  queryParametersList.add(ApiQueryParameter(name: 'location', value: item, allowReserved: false));
}
}
if (continent != null) {
for (final item in continent) {
  queryParametersList.add(ApiQueryParameter(name: 'continent', value: item, allowReserved: false));
}
}
if (geoId != null) {
for (final item in geoId) {
  queryParametersList.add(ApiQueryParameter(name: 'geoId', value: item, allowReserved: false));
}
}
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/netflows/top/locations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetNetflowsTopLocationsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetNetflowsTopLocationsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
