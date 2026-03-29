// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_leaked_credential_checks_summary_bot_class.dart';import '../models/radar_get_leaked_credential_checks_summary_compromised.dart';import '../models/radar_get_leaked_credential_checks_summary_dimension.dart';import '../models/radar_get_leaked_credential_checks_summary_format.dart';import '../models/radar_get_leaked_credential_checks_summary_response.dart';import '../models/radar_get_leaked_credential_checks_summary_response400.dart';import '../models/radar_get_leaked_credential_checks_timeseries_group_agg_interval.dart';import '../models/radar_get_leaked_credential_checks_timeseries_group_bot_class.dart';import '../models/radar_get_leaked_credential_checks_timeseries_group_check_result.dart';import '../models/radar_get_leaked_credential_checks_timeseries_group_compromised.dart';import '../models/radar_get_leaked_credential_checks_timeseries_group_dimension.dart';import '../models/radar_get_leaked_credential_checks_timeseries_group_format.dart';import '../models/radar_get_leaked_credential_checks_timeseries_group_normalization.dart';import '../models/radar_get_leaked_credential_checks_timeseries_group_response.dart';import '../models/radar_get_leaked_credential_checks_timeseries_group_response400.dart';/// RadarLeakedCredentialChecksApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarLeakedCredentialChecksApi with ApiExecutor {const RadarLeakedCredentialChecksApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get HTTP authentication requests distribution by dimension
///
/// Retrieves an aggregated summary of HTTP authentication requests grouped by the specified dimension.
///
/// `GET /radar/leaked_credential_checks/summary/{dimension}`
Future<ApiResult<RadarGetLeakedCredentialChecksSummaryResponse, RadarGetLeakedCredentialChecksSummaryResponse400>> radarGetLeakedCredentialChecksSummary({required RadarGetLeakedCredentialChecksSummaryDimension dimension, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<RadarGetLeakedCredentialChecksSummaryBotClass>? botClass, List<RadarGetLeakedCredentialChecksSummaryCompromised>? compromised, int? limitPerGroup, RadarGetLeakedCredentialChecksSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (botClass != null) {
for (final item in botClass) {
  queryParametersList.add(ApiQueryParameter(name: 'botClass', value: item.toJson(), allowReserved: false));
}
}
if (compromised != null) {
for (final item in compromised) {
  queryParametersList.add(ApiQueryParameter(name: 'compromised', value: item.toJson(), allowReserved: false));
}
}
if (limitPerGroup != null) {
  queryParameters['limitPerGroup'] = limitPerGroup.toString();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/leaked_credential_checks/summary/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetLeakedCredentialChecksSummaryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetLeakedCredentialChecksSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get time series distribution of HTTP authentication requests by dimension.
///
/// Retrieves the distribution of HTTP authentication requests, grouped by the specified dimension over time.
///
/// `GET /radar/leaked_credential_checks/timeseries_groups/{dimension}`
Future<ApiResult<RadarGetLeakedCredentialChecksTimeseriesGroupResponse, RadarGetLeakedCredentialChecksTimeseriesGroupResponse400>> radarGetLeakedCredentialChecksTimeseriesGroup({required RadarGetLeakedCredentialChecksTimeseriesGroupDimension dimension, RadarGetLeakedCredentialChecksTimeseriesGroupAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<RadarGetLeakedCredentialChecksTimeseriesGroupBotClass>? botClass, List<RadarGetLeakedCredentialChecksTimeseriesGroupCompromised>? compromised, List<RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult>? checkResult, int? limitPerGroup, RadarGetLeakedCredentialChecksTimeseriesGroupNormalization? normalization, RadarGetLeakedCredentialChecksTimeseriesGroupFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (botClass != null) {
for (final item in botClass) {
  queryParametersList.add(ApiQueryParameter(name: 'botClass', value: item.toJson(), allowReserved: false));
}
}
if (compromised != null) {
for (final item in compromised) {
  queryParametersList.add(ApiQueryParameter(name: 'compromised', value: item.toJson(), allowReserved: false));
}
}
if (checkResult != null) {
for (final item in checkResult) {
  queryParametersList.add(ApiQueryParameter(name: 'checkResult', value: item.toJson(), allowReserved: false));
}
}
if (limitPerGroup != null) {
  queryParameters['limitPerGroup'] = limitPerGroup.toString();
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
  path: '/radar/leaked_credential_checks/timeseries_groups/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetLeakedCredentialChecksTimeseriesGroupResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetLeakedCredentialChecksTimeseriesGroupResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
