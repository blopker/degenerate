// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_ai_bots_summary_content_type.dart';import '../models/radar_get_ai_bots_summary_dimension.dart';import '../models/radar_get_ai_bots_summary_format.dart';import '../models/radar_get_ai_bots_summary_response.dart';import '../models/radar_get_ai_bots_summary_response400.dart';import '../models/radar_get_ai_bots_timeseries_agg_interval.dart';import '../models/radar_get_ai_bots_timeseries_content_type.dart';import '../models/radar_get_ai_bots_timeseries_format.dart';import '../models/radar_get_ai_bots_timeseries_group_agg_interval.dart';import '../models/radar_get_ai_bots_timeseries_group_content_type.dart';import '../models/radar_get_ai_bots_timeseries_group_dimension.dart';import '../models/radar_get_ai_bots_timeseries_group_format.dart';import '../models/radar_get_ai_bots_timeseries_group_normalization.dart';import '../models/radar_get_ai_bots_timeseries_group_response.dart';import '../models/radar_get_ai_bots_timeseries_group_response400.dart';import '../models/radar_get_ai_bots_timeseries_response.dart';import '../models/radar_get_ai_bots_timeseries_response400.dart';/// RadarAiBotsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarAiBotsApi with ApiExecutor {const RadarAiBotsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get AI bots HTTP requests distribution by dimension
///
/// Retrieves an aggregated summary of AI bots HTTP requests grouped by the specified dimension.
///
/// `GET /radar/ai/bots/summary/{dimension}`
Future<ApiResult<RadarGetAiBotsSummaryResponse, RadarGetAiBotsSummaryResponse400>> radarGetAiBotsSummary({required RadarGetAiBotsSummaryDimension dimension, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<String>? crawlPurpose, List<String>? userAgent, List<String>? vertical, List<String>? industry, List<RadarGetAiBotsSummaryContentType>? contentType, int? limitPerGroup, RadarGetAiBotsSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (crawlPurpose != null) {
for (final item in crawlPurpose) {
  queryParametersList.add(ApiQueryParameter(name: 'crawlPurpose', value: item, allowReserved: false));
}
}
if (userAgent != null) {
for (final item in userAgent) {
  queryParametersList.add(ApiQueryParameter(name: 'userAgent', value: item, allowReserved: false));
}
}
if (vertical != null) {
for (final item in vertical) {
  queryParametersList.add(ApiQueryParameter(name: 'vertical', value: item, allowReserved: false));
}
}
if (industry != null) {
for (final item in industry) {
  queryParametersList.add(ApiQueryParameter(name: 'industry', value: item, allowReserved: false));
}
}
if (contentType != null) {
for (final item in contentType) {
  queryParametersList.add(ApiQueryParameter(name: 'contentType', value: item.toJson(), allowReserved: false));
}
}
if (limitPerGroup != null) queryParameters['limitPerGroup'] = limitPerGroup.toString();
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/ai/bots/summary/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetAiBotsSummaryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetAiBotsSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get AI bots HTTP requests time series
///
/// Retrieves AI bots HTTP request volume over time.
///
/// `GET /radar/ai/bots/timeseries`
Future<ApiResult<RadarGetAiBotsTimeseriesResponse, RadarGetAiBotsTimeseriesResponse400>> radarGetAiBotsTimeseries({RadarGetAiBotsTimeseriesAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<String>? crawlPurpose, List<String>? userAgent, List<String>? industry, List<String>? vertical, List<RadarGetAiBotsTimeseriesContentType>? contentType, int? limitPerGroup, RadarGetAiBotsTimeseriesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (crawlPurpose != null) {
for (final item in crawlPurpose) {
  queryParametersList.add(ApiQueryParameter(name: 'crawlPurpose', value: item, allowReserved: false));
}
}
if (userAgent != null) {
for (final item in userAgent) {
  queryParametersList.add(ApiQueryParameter(name: 'userAgent', value: item, allowReserved: false));
}
}
if (industry != null) {
for (final item in industry) {
  queryParametersList.add(ApiQueryParameter(name: 'industry', value: item, allowReserved: false));
}
}
if (vertical != null) {
for (final item in vertical) {
  queryParametersList.add(ApiQueryParameter(name: 'vertical', value: item, allowReserved: false));
}
}
if (contentType != null) {
for (final item in contentType) {
  queryParametersList.add(ApiQueryParameter(name: 'contentType', value: item.toJson(), allowReserved: false));
}
}
if (limitPerGroup != null) queryParameters['limitPerGroup'] = limitPerGroup.toString();
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/ai/bots/timeseries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetAiBotsTimeseriesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetAiBotsTimeseriesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get time series distribution of AI bots HTTP requests by dimension.
///
/// Retrieves the distribution of HTTP requests from AI bots, grouped by the specified dimension over time.
///
/// `GET /radar/ai/bots/timeseries_groups/{dimension}`
Future<ApiResult<RadarGetAiBotsTimeseriesGroupResponse, RadarGetAiBotsTimeseriesGroupResponse400>> radarGetAiBotsTimeseriesGroup({required RadarGetAiBotsTimeseriesGroupDimension dimension, RadarGetAiBotsTimeseriesGroupAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<String>? crawlPurpose, List<String>? userAgent, List<String>? industry, List<String>? vertical, List<RadarGetAiBotsTimeseriesGroupContentType>? contentType, int? limitPerGroup, RadarGetAiBotsTimeseriesGroupNormalization? normalization, RadarGetAiBotsTimeseriesGroupFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (crawlPurpose != null) {
for (final item in crawlPurpose) {
  queryParametersList.add(ApiQueryParameter(name: 'crawlPurpose', value: item, allowReserved: false));
}
}
if (userAgent != null) {
for (final item in userAgent) {
  queryParametersList.add(ApiQueryParameter(name: 'userAgent', value: item, allowReserved: false));
}
}
if (industry != null) {
for (final item in industry) {
  queryParametersList.add(ApiQueryParameter(name: 'industry', value: item, allowReserved: false));
}
}
if (vertical != null) {
for (final item in vertical) {
  queryParametersList.add(ApiQueryParameter(name: 'vertical', value: item, allowReserved: false));
}
}
if (contentType != null) {
for (final item in contentType) {
  queryParametersList.add(ApiQueryParameter(name: 'contentType', value: item.toJson(), allowReserved: false));
}
}
if (limitPerGroup != null) queryParameters['limitPerGroup'] = limitPerGroup.toString();
if (normalization != null) queryParameters['normalization'] = normalization.toJson();
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/ai/bots/timeseries_groups/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetAiBotsTimeseriesGroupResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetAiBotsTimeseriesGroupResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
