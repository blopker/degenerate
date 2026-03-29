// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_dns_summary_dimension.dart';import '../models/radar_get_dns_summary_dnssec.dart';import '../models/radar_get_dns_summary_dnssec_aware.dart';import '../models/radar_get_dns_summary_format.dart';import '../models/radar_get_dns_summary_ip_version.dart';import '../models/radar_get_dns_summary_protocol.dart';import '../models/radar_get_dns_summary_query_type.dart';import '../models/radar_get_dns_summary_response.dart';import '../models/radar_get_dns_summary_response400.dart';import '../models/radar_get_dns_summary_response_code.dart';import '../models/radar_get_dns_summary_response_ttl.dart';import '../models/radar_get_dns_timeseries_agg_interval.dart';import '../models/radar_get_dns_timeseries_dnssec.dart';import '../models/radar_get_dns_timeseries_dnssec_aware.dart';import '../models/radar_get_dns_timeseries_format.dart';import '../models/radar_get_dns_timeseries_group_agg_interval.dart';import '../models/radar_get_dns_timeseries_group_dimension.dart';import '../models/radar_get_dns_timeseries_group_dnssec.dart';import '../models/radar_get_dns_timeseries_group_dnssec_aware.dart';import '../models/radar_get_dns_timeseries_group_format.dart';import '../models/radar_get_dns_timeseries_group_ip_version.dart';import '../models/radar_get_dns_timeseries_group_normalization.dart';import '../models/radar_get_dns_timeseries_group_protocol.dart';import '../models/radar_get_dns_timeseries_group_query_type.dart';import '../models/radar_get_dns_timeseries_group_response.dart';import '../models/radar_get_dns_timeseries_group_response400.dart';import '../models/radar_get_dns_timeseries_group_response_code.dart';import '../models/radar_get_dns_timeseries_group_response_ttl.dart';import '../models/radar_get_dns_timeseries_ip_version.dart';import '../models/radar_get_dns_timeseries_protocol.dart';import '../models/radar_get_dns_timeseries_query_type.dart';import '../models/radar_get_dns_timeseries_response.dart';import '../models/radar_get_dns_timeseries_response400.dart';import '../models/radar_get_dns_timeseries_response_code.dart';import '../models/radar_get_dns_timeseries_response_ttl.dart';import '../models/radar_get_dns_top_ases_dnssec.dart';import '../models/radar_get_dns_top_ases_dnssec_aware.dart';import '../models/radar_get_dns_top_ases_format.dart';import '../models/radar_get_dns_top_ases_ip_version.dart';import '../models/radar_get_dns_top_ases_protocol.dart';import '../models/radar_get_dns_top_ases_query_type.dart';import '../models/radar_get_dns_top_ases_response.dart';import '../models/radar_get_dns_top_ases_response404.dart';import '../models/radar_get_dns_top_ases_response_code.dart';import '../models/radar_get_dns_top_ases_response_ttl.dart';import '../models/radar_get_dns_top_locations_dnssec.dart';import '../models/radar_get_dns_top_locations_dnssec_aware.dart';import '../models/radar_get_dns_top_locations_format.dart';import '../models/radar_get_dns_top_locations_ip_version.dart';import '../models/radar_get_dns_top_locations_protocol.dart';import '../models/radar_get_dns_top_locations_query_type.dart';import '../models/radar_get_dns_top_locations_response.dart';import '../models/radar_get_dns_top_locations_response404.dart';import '../models/radar_get_dns_top_locations_response_code.dart';import '../models/radar_get_dns_top_locations_response_ttl.dart';/// RadarDnsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarDnsApi with ApiExecutor {const RadarDnsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get DNS summary by dimension
///
/// Retrieves the distribution of DNS queries by the specified dimension.
///
/// `GET /radar/dns/summary/{dimension}`
Future<ApiResult<RadarGetDnsSummaryResponse, RadarGetDnsSummaryResponse400>> radarGetDnsSummary({required RadarGetDnsSummaryDimension dimension, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<bool>? cacheHit, List<bool>? nodata, List<RadarGetDnsSummaryProtocol>? protocol, List<RadarGetDnsSummaryQueryType?>? queryType, List<RadarGetDnsSummaryResponseCode>? responseCode, List<RadarGetDnsSummaryResponseTtl>? responseTtl, List<RadarGetDnsSummaryDnssec>? dnssec, List<RadarGetDnsSummaryDnssecAware>? dnssecAware, List<bool>? dnssecE2e, List<RadarGetDnsSummaryIpVersion>? ipVersion, int? limitPerGroup, List<bool>? matchingAnswer, List<String>? tld, RadarGetDnsSummaryFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (cacheHit != null) {
for (final item in cacheHit) {
  queryParametersList.add(ApiQueryParameter(name: 'cacheHit', value: item.toString(), allowReserved: false));
}
}
if (nodata != null) {
for (final item in nodata) {
  queryParametersList.add(ApiQueryParameter(name: 'nodata', value: item.toString(), allowReserved: false));
}
}
if (protocol != null) {
for (final item in protocol) {
  queryParametersList.add(ApiQueryParameter(name: 'protocol', value: item.toJson(), allowReserved: false));
}
}
if (queryType != null) {
for (final item in queryType) {
  if (item == null) continue;
  queryParametersList.add(ApiQueryParameter(name: 'queryType', value: item.toJson(), allowReserved: false));
}
}
if (responseCode != null) {
for (final item in responseCode) {
  queryParametersList.add(ApiQueryParameter(name: 'responseCode', value: item.toJson(), allowReserved: false));
}
}
if (responseTtl != null) {
for (final item in responseTtl) {
  queryParametersList.add(ApiQueryParameter(name: 'responseTtl', value: item.toJson(), allowReserved: false));
}
}
if (dnssec != null) {
for (final item in dnssec) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssec', value: item.toJson(), allowReserved: false));
}
}
if (dnssecAware != null) {
for (final item in dnssecAware) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecAware', value: item.toJson(), allowReserved: false));
}
}
if (dnssecE2e != null) {
for (final item in dnssecE2e) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecE2e', value: item.toString(), allowReserved: false));
}
}
if (ipVersion != null) {
for (final item in ipVersion) {
  queryParametersList.add(ApiQueryParameter(name: 'ipVersion', value: item.toJson(), allowReserved: false));
}
}
if (limitPerGroup != null) queryParameters['limitPerGroup'] = limitPerGroup.toString();
if (matchingAnswer != null) {
for (final item in matchingAnswer) {
  queryParametersList.add(ApiQueryParameter(name: 'matchingAnswer', value: item.toString(), allowReserved: false));
}
}
if (tld != null) {
for (final item in tld) {
  queryParametersList.add(ApiQueryParameter(name: 'tld', value: item, allowReserved: false));
}
}
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/dns/summary/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetDnsSummaryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetDnsSummaryResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get DNS queries time series
///
/// Retrieves normalized query volume to the 1.1.1.1 DNS resolver over time.
///
/// `GET /radar/dns/timeseries`
Future<ApiResult<RadarGetDnsTimeseriesResponse, RadarGetDnsTimeseriesResponse400>> radarGetDnsTimeseries({RadarGetDnsTimeseriesAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<bool>? cacheHit, List<bool>? nodata, List<RadarGetDnsTimeseriesProtocol>? protocol, List<RadarGetDnsTimeseriesQueryType?>? queryType, List<RadarGetDnsTimeseriesResponseCode>? responseCode, List<RadarGetDnsTimeseriesResponseTtl>? responseTtl, List<RadarGetDnsTimeseriesDnssec>? dnssec, List<RadarGetDnsTimeseriesDnssecAware>? dnssecAware, List<bool>? dnssecE2e, List<RadarGetDnsTimeseriesIpVersion>? ipVersion, List<bool>? matchingAnswer, List<String>? tld, RadarGetDnsTimeseriesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (cacheHit != null) {
for (final item in cacheHit) {
  queryParametersList.add(ApiQueryParameter(name: 'cacheHit', value: item.toString(), allowReserved: false));
}
}
if (nodata != null) {
for (final item in nodata) {
  queryParametersList.add(ApiQueryParameter(name: 'nodata', value: item.toString(), allowReserved: false));
}
}
if (protocol != null) {
for (final item in protocol) {
  queryParametersList.add(ApiQueryParameter(name: 'protocol', value: item.toJson(), allowReserved: false));
}
}
if (queryType != null) {
for (final item in queryType) {
  if (item == null) continue;
  queryParametersList.add(ApiQueryParameter(name: 'queryType', value: item.toJson(), allowReserved: false));
}
}
if (responseCode != null) {
for (final item in responseCode) {
  queryParametersList.add(ApiQueryParameter(name: 'responseCode', value: item.toJson(), allowReserved: false));
}
}
if (responseTtl != null) {
for (final item in responseTtl) {
  queryParametersList.add(ApiQueryParameter(name: 'responseTtl', value: item.toJson(), allowReserved: false));
}
}
if (dnssec != null) {
for (final item in dnssec) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssec', value: item.toJson(), allowReserved: false));
}
}
if (dnssecAware != null) {
for (final item in dnssecAware) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecAware', value: item.toJson(), allowReserved: false));
}
}
if (dnssecE2e != null) {
for (final item in dnssecE2e) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecE2e', value: item.toString(), allowReserved: false));
}
}
if (ipVersion != null) {
for (final item in ipVersion) {
  queryParametersList.add(ApiQueryParameter(name: 'ipVersion', value: item.toJson(), allowReserved: false));
}
}
if (matchingAnswer != null) {
for (final item in matchingAnswer) {
  queryParametersList.add(ApiQueryParameter(name: 'matchingAnswer', value: item.toString(), allowReserved: false));
}
}
if (tld != null) {
for (final item in tld) {
  queryParametersList.add(ApiQueryParameter(name: 'tld', value: item, allowReserved: false));
}
}
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/dns/timeseries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetDnsTimeseriesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetDnsTimeseriesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get DNS time series grouped by dimension
///
/// Retrieves the distribution of DNS queries grouped by dimension over time.
///
/// `GET /radar/dns/timeseries_groups/{dimension}`
Future<ApiResult<RadarGetDnsTimeseriesGroupResponse, RadarGetDnsTimeseriesGroupResponse400>> radarGetDnsTimeseriesGroup({required RadarGetDnsTimeseriesGroupDimension dimension, RadarGetDnsTimeseriesGroupAggInterval? aggInterval, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<bool>? cacheHit, List<bool>? nodata, List<RadarGetDnsTimeseriesGroupProtocol>? protocol, List<RadarGetDnsTimeseriesGroupQueryType?>? queryType, List<RadarGetDnsTimeseriesGroupResponseCode>? responseCode, List<RadarGetDnsTimeseriesGroupResponseTtl>? responseTtl, List<RadarGetDnsTimeseriesGroupDnssec>? dnssec, List<RadarGetDnsTimeseriesGroupDnssecAware>? dnssecAware, List<bool>? dnssecE2e, List<RadarGetDnsTimeseriesGroupIpVersion>? ipVersion, int? limitPerGroup, List<bool>? matchingAnswer, List<String>? tld, RadarGetDnsTimeseriesGroupNormalization? normalization, RadarGetDnsTimeseriesGroupFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (cacheHit != null) {
for (final item in cacheHit) {
  queryParametersList.add(ApiQueryParameter(name: 'cacheHit', value: item.toString(), allowReserved: false));
}
}
if (nodata != null) {
for (final item in nodata) {
  queryParametersList.add(ApiQueryParameter(name: 'nodata', value: item.toString(), allowReserved: false));
}
}
if (protocol != null) {
for (final item in protocol) {
  queryParametersList.add(ApiQueryParameter(name: 'protocol', value: item.toJson(), allowReserved: false));
}
}
if (queryType != null) {
for (final item in queryType) {
  if (item == null) continue;
  queryParametersList.add(ApiQueryParameter(name: 'queryType', value: item.toJson(), allowReserved: false));
}
}
if (responseCode != null) {
for (final item in responseCode) {
  queryParametersList.add(ApiQueryParameter(name: 'responseCode', value: item.toJson(), allowReserved: false));
}
}
if (responseTtl != null) {
for (final item in responseTtl) {
  queryParametersList.add(ApiQueryParameter(name: 'responseTtl', value: item.toJson(), allowReserved: false));
}
}
if (dnssec != null) {
for (final item in dnssec) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssec', value: item.toJson(), allowReserved: false));
}
}
if (dnssecAware != null) {
for (final item in dnssecAware) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecAware', value: item.toJson(), allowReserved: false));
}
}
if (dnssecE2e != null) {
for (final item in dnssecE2e) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecE2e', value: item.toString(), allowReserved: false));
}
}
if (ipVersion != null) {
for (final item in ipVersion) {
  queryParametersList.add(ApiQueryParameter(name: 'ipVersion', value: item.toJson(), allowReserved: false));
}
}
if (limitPerGroup != null) queryParameters['limitPerGroup'] = limitPerGroup.toString();
if (matchingAnswer != null) {
for (final item in matchingAnswer) {
  queryParametersList.add(ApiQueryParameter(name: 'matchingAnswer', value: item.toString(), allowReserved: false));
}
}
if (tld != null) {
for (final item in tld) {
  queryParametersList.add(ApiQueryParameter(name: 'tld', value: item, allowReserved: false));
}
}
if (normalization != null) queryParameters['normalization'] = normalization.toJson();
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/dns/timeseries_groups/${Uri.encodeComponent(dimension.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetDnsTimeseriesGroupResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetDnsTimeseriesGroupResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get top ASes by DNS queries
///
/// Retrieves the top autonomous systems by DNS queries made to 1.1.1.1 DNS resolver.
///
/// `GET /radar/dns/top/ases`
Future<ApiResult<RadarGetDnsTopAsesResponse, RadarGetDnsTopAsesResponse404>> radarGetDnsTopAses({int? limit, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<String>? domain, List<bool>? cacheHit, List<bool>? nodata, List<RadarGetDnsTopAsesProtocol>? protocol, List<RadarGetDnsTopAsesQueryType?>? queryType, List<RadarGetDnsTopAsesResponseCode>? responseCode, List<RadarGetDnsTopAsesResponseTtl>? responseTtl, List<RadarGetDnsTopAsesDnssec>? dnssec, List<RadarGetDnsTopAsesDnssecAware>? dnssecAware, List<bool>? dnssecE2e, List<RadarGetDnsTopAsesIpVersion>? ipVersion, List<bool>? matchingAnswer, RadarGetDnsTopAsesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (domain != null) {
for (final item in domain) {
  queryParametersList.add(ApiQueryParameter(name: 'domain', value: item, allowReserved: false));
}
}
if (cacheHit != null) {
for (final item in cacheHit) {
  queryParametersList.add(ApiQueryParameter(name: 'cacheHit', value: item.toString(), allowReserved: false));
}
}
if (nodata != null) {
for (final item in nodata) {
  queryParametersList.add(ApiQueryParameter(name: 'nodata', value: item.toString(), allowReserved: false));
}
}
if (protocol != null) {
for (final item in protocol) {
  queryParametersList.add(ApiQueryParameter(name: 'protocol', value: item.toJson(), allowReserved: false));
}
}
if (queryType != null) {
for (final item in queryType) {
  if (item == null) continue;
  queryParametersList.add(ApiQueryParameter(name: 'queryType', value: item.toJson(), allowReserved: false));
}
}
if (responseCode != null) {
for (final item in responseCode) {
  queryParametersList.add(ApiQueryParameter(name: 'responseCode', value: item.toJson(), allowReserved: false));
}
}
if (responseTtl != null) {
for (final item in responseTtl) {
  queryParametersList.add(ApiQueryParameter(name: 'responseTtl', value: item.toJson(), allowReserved: false));
}
}
if (dnssec != null) {
for (final item in dnssec) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssec', value: item.toJson(), allowReserved: false));
}
}
if (dnssecAware != null) {
for (final item in dnssecAware) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecAware', value: item.toJson(), allowReserved: false));
}
}
if (dnssecE2e != null) {
for (final item in dnssecE2e) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecE2e', value: item.toString(), allowReserved: false));
}
}
if (ipVersion != null) {
for (final item in ipVersion) {
  queryParametersList.add(ApiQueryParameter(name: 'ipVersion', value: item.toJson(), allowReserved: false));
}
}
if (matchingAnswer != null) {
for (final item in matchingAnswer) {
  queryParametersList.add(ApiQueryParameter(name: 'matchingAnswer', value: item.toString(), allowReserved: false));
}
}
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/dns/top/ases',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetDnsTopAsesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetDnsTopAsesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get top locations by DNS queries
///
/// Retrieves the top locations by DNS queries made to 1.1.1.1 DNS resolver.
///
/// `GET /radar/dns/top/locations`
Future<ApiResult<RadarGetDnsTopLocationsResponse, RadarGetDnsTopLocationsResponse404>> radarGetDnsTopLocations({int? limit, List<String>? name, List<String>? dateRange, List<DateTime>? dateStart, List<DateTime>? dateEnd, List<String>? asn, List<String>? location, List<String>? continent, List<String>? domain, List<bool>? cacheHit, List<bool>? nodata, List<RadarGetDnsTopLocationsProtocol>? protocol, List<RadarGetDnsTopLocationsQueryType?>? queryType, List<RadarGetDnsTopLocationsResponseCode>? responseCode, List<RadarGetDnsTopLocationsResponseTtl>? responseTtl, List<RadarGetDnsTopLocationsDnssec>? dnssec, List<RadarGetDnsTopLocationsDnssecAware>? dnssecAware, List<bool>? dnssecE2e, List<RadarGetDnsTopLocationsIpVersion>? ipVersion, List<bool>? matchingAnswer, List<String>? tld, RadarGetDnsTopLocationsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
if (domain != null) {
for (final item in domain) {
  queryParametersList.add(ApiQueryParameter(name: 'domain', value: item, allowReserved: false));
}
}
if (cacheHit != null) {
for (final item in cacheHit) {
  queryParametersList.add(ApiQueryParameter(name: 'cacheHit', value: item.toString(), allowReserved: false));
}
}
if (nodata != null) {
for (final item in nodata) {
  queryParametersList.add(ApiQueryParameter(name: 'nodata', value: item.toString(), allowReserved: false));
}
}
if (protocol != null) {
for (final item in protocol) {
  queryParametersList.add(ApiQueryParameter(name: 'protocol', value: item.toJson(), allowReserved: false));
}
}
if (queryType != null) {
for (final item in queryType) {
  if (item == null) continue;
  queryParametersList.add(ApiQueryParameter(name: 'queryType', value: item.toJson(), allowReserved: false));
}
}
if (responseCode != null) {
for (final item in responseCode) {
  queryParametersList.add(ApiQueryParameter(name: 'responseCode', value: item.toJson(), allowReserved: false));
}
}
if (responseTtl != null) {
for (final item in responseTtl) {
  queryParametersList.add(ApiQueryParameter(name: 'responseTtl', value: item.toJson(), allowReserved: false));
}
}
if (dnssec != null) {
for (final item in dnssec) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssec', value: item.toJson(), allowReserved: false));
}
}
if (dnssecAware != null) {
for (final item in dnssecAware) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecAware', value: item.toJson(), allowReserved: false));
}
}
if (dnssecE2e != null) {
for (final item in dnssecE2e) {
  queryParametersList.add(ApiQueryParameter(name: 'dnssecE2e', value: item.toString(), allowReserved: false));
}
}
if (ipVersion != null) {
for (final item in ipVersion) {
  queryParametersList.add(ApiQueryParameter(name: 'ipVersion', value: item.toJson(), allowReserved: false));
}
}
if (matchingAnswer != null) {
for (final item in matchingAnswer) {
  queryParametersList.add(ApiQueryParameter(name: 'matchingAnswer', value: item.toString(), allowReserved: false));
}
}
if (tld != null) {
for (final item in tld) {
  queryParametersList.add(ApiQueryParameter(name: 'tld', value: item, allowReserved: false));
}
}
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/dns/top/locations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetDnsTopLocationsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetDnsTopLocationsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
