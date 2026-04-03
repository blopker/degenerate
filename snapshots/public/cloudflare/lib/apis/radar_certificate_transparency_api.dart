// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_certificate_authorities_format.dart';import '../models/radar_get_certificate_authorities_response400.dart';import '../models/radar_get_certificate_authorities_response_result.dart';import '../models/radar_get_certificate_authority_details_format.dart';import '../models/radar_get_certificate_authority_details_response404.dart';import '../models/radar_get_certificate_authority_details_response_result.dart';import '../models/radar_get_certificate_log_details_format.dart';import '../models/radar_get_certificate_log_details_response404.dart';import '../models/radar_get_certificate_log_details_response_result.dart';import '../models/radar_get_certificate_logs_format.dart';import '../models/radar_get_certificate_logs_response400.dart';import '../models/radar_get_certificate_logs_response_result.dart';import '../models/radar_get_ct_summary_dimension.dart';import '../models/radar_get_ct_summary_duration.dart';import '../models/radar_get_ct_summary_entry_type.dart';import '../models/radar_get_ct_summary_expiration_status.dart';import '../models/radar_get_ct_summary_format.dart';import '../models/radar_get_ct_summary_log.dart';import '../models/radar_get_ct_summary_normalization.dart';import '../models/radar_get_ct_summary_public_key_algorithm.dart';import '../models/radar_get_ct_summary_response400.dart';import '../models/radar_get_ct_summary_response_result.dart';import '../models/radar_get_ct_summary_signature_algorithm.dart';import '../models/radar_get_ct_summary_unique_entries.dart';import '../models/radar_get_ct_summary_validation_level.dart';import '../models/radar_get_ct_timeseries_agg_interval.dart';import '../models/radar_get_ct_timeseries_duration.dart';import '../models/radar_get_ct_timeseries_entry_type.dart';import '../models/radar_get_ct_timeseries_expiration_status.dart';import '../models/radar_get_ct_timeseries_format.dart';import '../models/radar_get_ct_timeseries_group_agg_interval.dart';import '../models/radar_get_ct_timeseries_group_dimension.dart';import '../models/radar_get_ct_timeseries_group_duration.dart';import '../models/radar_get_ct_timeseries_group_entry_type.dart';import '../models/radar_get_ct_timeseries_group_expiration_status.dart';import '../models/radar_get_ct_timeseries_group_format.dart';import '../models/radar_get_ct_timeseries_group_log.dart';import '../models/radar_get_ct_timeseries_group_normalization.dart';import '../models/radar_get_ct_timeseries_group_public_key_algorithm.dart';import '../models/radar_get_ct_timeseries_group_response400.dart';import '../models/radar_get_ct_timeseries_group_response_result.dart';import '../models/radar_get_ct_timeseries_group_signature_algorithm.dart';import '../models/radar_get_ct_timeseries_group_unique_entries.dart';import '../models/radar_get_ct_timeseries_group_validation_level.dart';import '../models/radar_get_ct_timeseries_log.dart';import '../models/radar_get_ct_timeseries_public_key_algorithm.dart';import '../models/radar_get_ct_timeseries_response400.dart';import '../models/radar_get_ct_timeseries_response_result.dart';import '../models/radar_get_ct_timeseries_signature_algorithm.dart';import '../models/radar_get_ct_timeseries_unique_entries.dart';import '../models/radar_get_ct_timeseries_validation_level.dart';/// RadarCertificateTransparencyApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarCertificateTransparencyApi with ApiExecutor {const RadarCertificateTransparencyApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List certificate authorities
///
/// Retrieves a list of certificate authorities.
///
/// `GET /radar/ct/authorities`
Future<ApiResult<RadarGetCertificateAuthoritiesResponseResult, RadarGetCertificateAuthoritiesResponse400>> radarGetCertificateAuthorities({int? limit, int? offset, RadarGetCertificateAuthoritiesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/radar/ct/authorities',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetCertificateAuthoritiesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetCertificateAuthoritiesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get certificate authority details
///
/// Retrieves the requested CA information.
///
/// `GET /radar/ct/authorities/{ca_slug}`
Future<ApiResult<RadarGetCertificateAuthorityDetailsResponseResult, RadarGetCertificateAuthorityDetailsResponse404>> radarGetCertificateAuthorityDetails({required String caSlug, RadarGetCertificateAuthorityDetailsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/ct/authorities/${Uri.encodeComponent(caSlug)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetCertificateAuthorityDetailsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetCertificateAuthorityDetailsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List certificate logs
///
/// Retrieves a list of certificate logs.
///
/// `GET /radar/ct/logs`
Future<ApiResult<RadarGetCertificateLogsResponseResult, RadarGetCertificateLogsResponse400>> radarGetCertificateLogs({int? limit, int? offset, RadarGetCertificateLogsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/radar/ct/logs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetCertificateLogsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetCertificateLogsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get certificate log details
///
/// Retrieves the requested certificate log information.
///
/// `GET /radar/ct/logs/{log_slug}`
Future<ApiResult<RadarGetCertificateLogDetailsResponseResult, RadarGetCertificateLogDetailsResponse404>> radarGetCertificateLogDetails({required String logSlug, RadarGetCertificateLogDetailsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/ct/logs/${Uri.encodeComponent(logSlug)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetCertificateLogDetailsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetCertificateLogDetailsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get certificate distribution by dimension
///
/// Retrieves an aggregated summary of certificates grouped by the specified dimension.
///
/// `GET /radar/ct/summary/{dimension}`
Future<ApiResult<RadarGetCtSummaryResponseResult, RadarGetCtSummaryResponse400>> radarGetCtSummary({required RadarGetCtSummaryDimension dimension, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, int? limitPerGroup, List<String>? ca, List<String>? caOwner, List<RadarGetCtSummaryDuration>? duration, List<RadarGetCtSummaryEntryType>? entryType, List<RadarGetCtSummaryExpirationStatus>? expirationStatus, List<bool>? hasIps, List<bool>? hasWildcards, List<String>? log, List<RadarGetCtSummaryLog>? logApi, List<String>? logOperator, List<RadarGetCtSummaryPublicKeyAlgorithm>? publicKeyAlgorithm, List<RadarGetCtSummarySignatureAlgorithm>? signatureAlgorithm, List<String>? tld, List<RadarGetCtSummaryValidationLevel>? validationLevel, List<RadarGetCtSummaryUniqueEntries>? uniqueEntries, RadarGetCtSummaryNormalization? normalization, RadarGetCtSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (limitPerGroup != null) {
  queryParameters['limitPerGroup'] = limitPerGroup.toString();
}
if (ca != null) {
for (final item in ca) {
  queryParametersList.add(ApiQueryParameter(name: 'ca', value: item));
}
}
if (caOwner != null) {
for (final item in caOwner) {
  queryParametersList.add(ApiQueryParameter(name: 'caOwner', value: item));
}
}
if (duration != null) {
for (final item in duration) {
  queryParametersList.add(ApiQueryParameter(name: 'duration', value: item.toJson()));
}
}
if (entryType != null) {
for (final item in entryType) {
  queryParametersList.add(ApiQueryParameter(name: 'entryType', value: item.toJson()));
}
}
if (expirationStatus != null) {
for (final item in expirationStatus) {
  queryParametersList.add(ApiQueryParameter(name: 'expirationStatus', value: item.toJson()));
}
}
if (hasIps != null) {
for (final item in hasIps) {
  queryParametersList.add(ApiQueryParameter(name: 'hasIps', value: item.toString()));
}
}
if (hasWildcards != null) {
for (final item in hasWildcards) {
  queryParametersList.add(ApiQueryParameter(name: 'hasWildcards', value: item.toString()));
}
}
if (log != null) {
for (final item in log) {
  queryParametersList.add(ApiQueryParameter(name: 'log', value: item));
}
}
if (logApi != null) {
for (final item in logApi) {
  queryParametersList.add(ApiQueryParameter(name: 'logApi', value: item.toJson()));
}
}
if (logOperator != null) {
for (final item in logOperator) {
  queryParametersList.add(ApiQueryParameter(name: 'logOperator', value: item));
}
}
if (publicKeyAlgorithm != null) {
for (final item in publicKeyAlgorithm) {
  queryParametersList.add(ApiQueryParameter(name: 'publicKeyAlgorithm', value: item.toJson()));
}
}
if (signatureAlgorithm != null) {
for (final item in signatureAlgorithm) {
  queryParametersList.add(ApiQueryParameter(name: 'signatureAlgorithm', value: item.toJson()));
}
}
if (tld != null) {
for (final item in tld) {
  queryParametersList.add(ApiQueryParameter(name: 'tld', value: item));
}
}
if (validationLevel != null) {
for (final item in validationLevel) {
  queryParametersList.add(ApiQueryParameter(name: 'validationLevel', value: item.toJson()));
}
}
if (uniqueEntries != null) {
for (final item in uniqueEntries) {
  queryParametersList.add(ApiQueryParameter(name: 'uniqueEntries', value: item.toJson()));
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
  path: '/radar/ct/summary/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetCtSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetCtSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get certificates time series
///
/// Retrieves certificate volume over time.
///
/// `GET /radar/ct/timeseries`
Future<ApiResult<RadarGetCtTimeseriesResponseResult, RadarGetCtTimeseriesResponse400>> radarGetCtTimeseries({RadarGetCtTimeseriesAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? ca, List<String>? caOwner, List<RadarGetCtTimeseriesDuration>? duration, List<RadarGetCtTimeseriesEntryType>? entryType, List<RadarGetCtTimeseriesExpirationStatus>? expirationStatus, List<bool>? hasIps, List<bool>? hasWildcards, List<String>? log, List<RadarGetCtTimeseriesLog>? logApi, List<String>? logOperator, List<RadarGetCtTimeseriesPublicKeyAlgorithm>? publicKeyAlgorithm, List<RadarGetCtTimeseriesSignatureAlgorithm>? signatureAlgorithm, List<String>? tld, List<RadarGetCtTimeseriesValidationLevel>? validationLevel, List<RadarGetCtTimeseriesUniqueEntries>? uniqueEntries, RadarGetCtTimeseriesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (ca != null) {
for (final item in ca) {
  queryParametersList.add(ApiQueryParameter(name: 'ca', value: item));
}
}
if (caOwner != null) {
for (final item in caOwner) {
  queryParametersList.add(ApiQueryParameter(name: 'caOwner', value: item));
}
}
if (duration != null) {
for (final item in duration) {
  queryParametersList.add(ApiQueryParameter(name: 'duration', value: item.toJson()));
}
}
if (entryType != null) {
for (final item in entryType) {
  queryParametersList.add(ApiQueryParameter(name: 'entryType', value: item.toJson()));
}
}
if (expirationStatus != null) {
for (final item in expirationStatus) {
  queryParametersList.add(ApiQueryParameter(name: 'expirationStatus', value: item.toJson()));
}
}
if (hasIps != null) {
for (final item in hasIps) {
  queryParametersList.add(ApiQueryParameter(name: 'hasIps', value: item.toString()));
}
}
if (hasWildcards != null) {
for (final item in hasWildcards) {
  queryParametersList.add(ApiQueryParameter(name: 'hasWildcards', value: item.toString()));
}
}
if (log != null) {
for (final item in log) {
  queryParametersList.add(ApiQueryParameter(name: 'log', value: item));
}
}
if (logApi != null) {
for (final item in logApi) {
  queryParametersList.add(ApiQueryParameter(name: 'logApi', value: item.toJson()));
}
}
if (logOperator != null) {
for (final item in logOperator) {
  queryParametersList.add(ApiQueryParameter(name: 'logOperator', value: item));
}
}
if (publicKeyAlgorithm != null) {
for (final item in publicKeyAlgorithm) {
  queryParametersList.add(ApiQueryParameter(name: 'publicKeyAlgorithm', value: item.toJson()));
}
}
if (signatureAlgorithm != null) {
for (final item in signatureAlgorithm) {
  queryParametersList.add(ApiQueryParameter(name: 'signatureAlgorithm', value: item.toJson()));
}
}
if (tld != null) {
for (final item in tld) {
  queryParametersList.add(ApiQueryParameter(name: 'tld', value: item));
}
}
if (validationLevel != null) {
for (final item in validationLevel) {
  queryParametersList.add(ApiQueryParameter(name: 'validationLevel', value: item.toJson()));
}
}
if (uniqueEntries != null) {
for (final item in uniqueEntries) {
  queryParametersList.add(ApiQueryParameter(name: 'uniqueEntries', value: item.toJson()));
}
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/ct/timeseries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetCtTimeseriesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetCtTimeseriesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get time series of certificate distribution by dimension
///
/// Retrieves the distribution of certificates grouped by the specified dimension over time.
///
/// `GET /radar/ct/timeseries_groups/{dimension}`
Future<ApiResult<RadarGetCtTimeseriesGroupResponseResult, RadarGetCtTimeseriesGroupResponse400>> radarGetCtTimeseriesGroup({required RadarGetCtTimeseriesGroupDimension dimension, RadarGetCtTimeseriesGroupAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, int? limitPerGroup, List<String>? ca, List<String>? caOwner, List<RadarGetCtTimeseriesGroupDuration>? duration, List<RadarGetCtTimeseriesGroupEntryType>? entryType, List<RadarGetCtTimeseriesGroupExpirationStatus>? expirationStatus, List<bool>? hasIps, List<bool>? hasWildcards, List<String>? log, List<RadarGetCtTimeseriesGroupLog>? logApi, List<String>? logOperator, List<RadarGetCtTimeseriesGroupPublicKeyAlgorithm>? publicKeyAlgorithm, List<RadarGetCtTimeseriesGroupSignatureAlgorithm>? signatureAlgorithm, List<RadarGetCtTimeseriesGroupValidationLevel>? validationLevel, List<String>? tld, RadarGetCtTimeseriesGroupNormalization? normalization, List<RadarGetCtTimeseriesGroupUniqueEntries>? uniqueEntries, RadarGetCtTimeseriesGroupFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (limitPerGroup != null) {
  queryParameters['limitPerGroup'] = limitPerGroup.toString();
}
if (ca != null) {
for (final item in ca) {
  queryParametersList.add(ApiQueryParameter(name: 'ca', value: item));
}
}
if (caOwner != null) {
for (final item in caOwner) {
  queryParametersList.add(ApiQueryParameter(name: 'caOwner', value: item));
}
}
if (duration != null) {
for (final item in duration) {
  queryParametersList.add(ApiQueryParameter(name: 'duration', value: item.toJson()));
}
}
if (entryType != null) {
for (final item in entryType) {
  queryParametersList.add(ApiQueryParameter(name: 'entryType', value: item.toJson()));
}
}
if (expirationStatus != null) {
for (final item in expirationStatus) {
  queryParametersList.add(ApiQueryParameter(name: 'expirationStatus', value: item.toJson()));
}
}
if (hasIps != null) {
for (final item in hasIps) {
  queryParametersList.add(ApiQueryParameter(name: 'hasIps', value: item.toString()));
}
}
if (hasWildcards != null) {
for (final item in hasWildcards) {
  queryParametersList.add(ApiQueryParameter(name: 'hasWildcards', value: item.toString()));
}
}
if (log != null) {
for (final item in log) {
  queryParametersList.add(ApiQueryParameter(name: 'log', value: item));
}
}
if (logApi != null) {
for (final item in logApi) {
  queryParametersList.add(ApiQueryParameter(name: 'logApi', value: item.toJson()));
}
}
if (logOperator != null) {
for (final item in logOperator) {
  queryParametersList.add(ApiQueryParameter(name: 'logOperator', value: item));
}
}
if (publicKeyAlgorithm != null) {
for (final item in publicKeyAlgorithm) {
  queryParametersList.add(ApiQueryParameter(name: 'publicKeyAlgorithm', value: item.toJson()));
}
}
if (signatureAlgorithm != null) {
for (final item in signatureAlgorithm) {
  queryParametersList.add(ApiQueryParameter(name: 'signatureAlgorithm', value: item.toJson()));
}
}
if (validationLevel != null) {
for (final item in validationLevel) {
  queryParametersList.add(ApiQueryParameter(name: 'validationLevel', value: item.toJson()));
}
}
if (tld != null) {
for (final item in tld) {
  queryParametersList.add(ApiQueryParameter(name: 'tld', value: item));
}
}
if (normalization != null) {
  queryParameters['normalization'] = normalization.toJson();
}
if (uniqueEntries != null) {
for (final item in uniqueEntries) {
  queryParametersList.add(ApiQueryParameter(name: 'uniqueEntries', value: item.toJson()));
}
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/ct/timeseries_groups/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetCtTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetCtTimeseriesGroupResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
