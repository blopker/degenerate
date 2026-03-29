// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_origin_details_format.dart';import '../models/radar_get_origin_details_response.dart';import '../models/radar_get_origin_details_response404.dart';import '../models/radar_get_origin_details_slug.dart';import '../models/radar_get_origins_format.dart';import '../models/radar_get_origins_response.dart';import '../models/radar_get_origins_response400.dart';import '../models/radar_get_origins_summary_dimension.dart';import '../models/radar_get_origins_summary_format.dart';import '../models/radar_get_origins_summary_metric.dart';import '../models/radar_get_origins_summary_origin.dart';import '../models/radar_get_origins_summary_response.dart';import '../models/radar_get_origins_summary_response400.dart';import '../models/radar_get_origins_timeseries_agg_interval.dart';import '../models/radar_get_origins_timeseries_format.dart';import '../models/radar_get_origins_timeseries_group_agg_interval.dart';import '../models/radar_get_origins_timeseries_group_dimension.dart';import '../models/radar_get_origins_timeseries_group_format.dart';import '../models/radar_get_origins_timeseries_group_metric.dart';import '../models/radar_get_origins_timeseries_group_normalization.dart';import '../models/radar_get_origins_timeseries_group_origin.dart';import '../models/radar_get_origins_timeseries_group_response.dart';import '../models/radar_get_origins_timeseries_group_response400.dart';import '../models/radar_get_origins_timeseries_metric.dart';import '../models/radar_get_origins_timeseries_origin.dart';import '../models/radar_get_origins_timeseries_response.dart';import '../models/radar_get_origins_timeseries_response400.dart';/// RadarOriginsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarOriginsApi with ApiExecutor {const RadarOriginsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Origins
///
/// Retrieves a list of origins with their regions.
///
/// `GET /radar/origins`
Future<ApiResult<RadarGetOriginsResponse, RadarGetOriginsResponse400>> radarGetOrigins({int? limit, int? offset, RadarGetOriginsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/origins',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetOriginsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetOriginsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Origin details
///
/// Retrieves the requested origin information with its regions.
///
/// `GET /radar/origins/{slug}`
Future<ApiResult<RadarGetOriginDetailsResponse, RadarGetOriginDetailsResponse404>> radarGetOriginDetails({required RadarGetOriginDetailsSlug slug, RadarGetOriginDetailsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/origins/${Uri.encodeComponent(slug.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetOriginDetailsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetOriginDetailsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get origin metrics distribution by dimension
///
/// Retrieves an aggregated summary of origin metrics grouped by the specified dimension.
///
/// `GET /radar/origins/summary/{dimension}`
Future<ApiResult<RadarGetOriginsSummaryResponse, RadarGetOriginsSummaryResponse400>> radarGetOriginsSummary({required RadarGetOriginsSummaryDimension dimension, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, int? limitPerGroup, required List<RadarGetOriginsSummaryOrigin> origin, required RadarGetOriginsSummaryMetric metric, List<String>? region, RadarGetOriginsSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (limitPerGroup != null) {
  queryParameters['limitPerGroup'] = limitPerGroup.toString();
}
for (final item in origin) {
  queryParametersList.add(ApiQueryParameter(name: 'origin', value: item.toJson(), allowReserved: false));
}
queryParameters['metric'] = metric.toJson();
if (region != null) {
for (final item in region) {
  queryParametersList.add(ApiQueryParameter(name: 'region', value: item, allowReserved: false));
}
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/origins/summary/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetOriginsSummaryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetOriginsSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get origin metrics time series
///
/// Retrieves the time series of origin metrics for the specified origin.
///
/// `GET /radar/origins/timeseries`
Future<ApiResult<RadarGetOriginsTimeseriesResponse, RadarGetOriginsTimeseriesResponse400>> radarGetOriginsTimeseries({RadarGetOriginsTimeseriesAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, required List<RadarGetOriginsTimeseriesOrigin> origin, required RadarGetOriginsTimeseriesMetric metric, List<String>? region, RadarGetOriginsTimeseriesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (aggInterval != null) {
  queryParameters['aggInterval'] = aggInterval.toJson();
}
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
for (final item in origin) {
  queryParametersList.add(ApiQueryParameter(name: 'origin', value: item.toJson(), allowReserved: false));
}
queryParameters['metric'] = metric.toJson();
if (region != null) {
for (final item in region) {
  queryParametersList.add(ApiQueryParameter(name: 'region', value: item, allowReserved: false));
}
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/origins/timeseries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetOriginsTimeseriesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetOriginsTimeseriesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get origin metrics time series grouped by dimension
///
/// Retrieves the distribution of origin metrics grouped by the specified dimension over time.
///
/// `GET /radar/origins/timeseries_groups/{dimension}`
Future<ApiResult<RadarGetOriginsTimeseriesGroupResponse, RadarGetOriginsTimeseriesGroupResponse400>> radarGetOriginsTimeseriesGroup({required RadarGetOriginsTimeseriesGroupDimension dimension, RadarGetOriginsTimeseriesGroupAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, int? limitPerGroup, required List<RadarGetOriginsTimeseriesGroupOrigin> origin, required RadarGetOriginsTimeseriesGroupMetric metric, List<String>? region, RadarGetOriginsTimeseriesGroupNormalization? normalization, RadarGetOriginsTimeseriesGroupFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (aggInterval != null) {
  queryParameters['aggInterval'] = aggInterval.toJson();
}
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
if (limitPerGroup != null) {
  queryParameters['limitPerGroup'] = limitPerGroup.toString();
}
for (final item in origin) {
  queryParametersList.add(ApiQueryParameter(name: 'origin', value: item.toJson(), allowReserved: false));
}
queryParameters['metric'] = metric.toJson();
if (region != null) {
for (final item in region) {
  queryParametersList.add(ApiQueryParameter(name: 'region', value: item, allowReserved: false));
}
}
if (normalization != null) {
  queryParameters['normalization'] = normalization.toJson();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/origins/timeseries_groups/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetOriginsTimeseriesGroupResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetOriginsTimeseriesGroupResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
