// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_as_botnet_threat_feed_format.dart';import '../models/radar_get_as_botnet_threat_feed_metric.dart';import '../models/radar_get_as_botnet_threat_feed_response400.dart';import '../models/radar_get_as_botnet_threat_feed_response_result.dart';import '../models/radar_get_as_botnet_threat_feed_sort_order.dart';import '../models/radar_get_asns_as_set_format.dart';import '../models/radar_get_asns_as_set_response400.dart';import '../models/radar_get_asns_as_set_response_result.dart';import '../models/radar_get_asns_rel_format.dart';import '../models/radar_get_asns_rel_response400.dart';import '../models/radar_get_asns_rel_response_result.dart';import '../models/radar_get_entities_asn_by_id_format.dart';import '../models/radar_get_entities_asn_by_id_response404.dart';import '../models/radar_get_entities_asn_by_id_response_result.dart';import '../models/radar_get_entities_asn_by_ip_format.dart';import '../models/radar_get_entities_asn_by_ip_response404.dart';import '../models/radar_get_entities_asn_by_ip_response_result.dart';import '../models/radar_get_entities_asn_list_format.dart';import '../models/radar_get_entities_asn_list_order_by.dart';import '../models/radar_get_entities_asn_list_response400.dart';import '../models/radar_get_entities_asn_list_response_result.dart';/// RadarAutonomousSystemsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarAutonomousSystemsApi with ApiExecutor {const RadarAutonomousSystemsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List autonomous systems
///
/// Retrieves a list of autonomous systems.
///
/// `GET /radar/entities/asns`
Future<ApiResult<RadarGetEntitiesAsnListResponseResult, RadarGetEntitiesAsnListResponse400>> radarGetEntitiesAsnList({int? limit, int? offset, String? asn, String? location, RadarGetEntitiesAsnListOrderBy? orderBy, RadarGetEntitiesAsnListFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (asn != null) {
  queryParameters['asn'] = asn;
}
if (location != null) {
  queryParameters['location'] = location;
}
if (orderBy != null) {
  queryParameters['orderBy'] = orderBy.toJson();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/entities/asns',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetEntitiesAsnListResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetEntitiesAsnListResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get AS details by ASN
///
/// Retrieves the requested autonomous system information. (A confidence level below `5` indicates a low level of confidence in the traffic data - normally this happens because Cloudflare has a small amount of traffic from/to this AS). Population estimates come from APNIC (refer to https://labs.apnic.net/?p=526).
///
/// `GET /radar/entities/asns/{asn}`
Future<ApiResult<RadarGetEntitiesAsnByIdResponseResult, RadarGetEntitiesAsnByIdResponse404>> radarGetEntitiesAsnById({required int asn, RadarGetEntitiesAsnByIdFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/entities/asns/${Uri.encodeComponent(asn.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetEntitiesAsnByIdResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetEntitiesAsnByIdResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get IRR AS-SETs that an AS is a member of
///
/// Retrieves Internet Routing Registry AS-SETs that an AS is a member of.
///
/// `GET /radar/entities/asns/{asn}/as_set`
Future<ApiResult<RadarGetAsnsAsSetResponseResult, RadarGetAsnsAsSetResponse400>> radarGetAsnsAsSet({required int asn, RadarGetAsnsAsSetFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/entities/asns/${Uri.encodeComponent(asn.toString())}/as_set',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetAsnsAsSetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetAsnsAsSetResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get AS-level relationships by ASN
///
/// Retrieves AS-level relationship for given networks.
///
/// `GET /radar/entities/asns/{asn}/rel`
Future<ApiResult<RadarGetAsnsRelResponseResult, RadarGetAsnsRelResponse400>> radarGetAsnsRel({required int asn, int? asn2, RadarGetAsnsRelFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (asn2 != null) {
  queryParameters['asn2'] = asn2.toString();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/entities/asns/${Uri.encodeComponent(asn.toString())}/rel',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetAsnsRelResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetAsnsRelResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get AS rankings by botnet threat feed activity
///
/// Retrieves a ranked list of Autonomous Systems based on their presence in the Cloudflare Botnet Threat Feed. Rankings can be sorted by offense count or number of bad IPs. Optionally compare to a previous date to see rank changes.
///
/// `GET /radar/entities/asns/botnet_threat_feed`
Future<ApiResult<RadarGetAsBotnetThreatFeedResponseResult, RadarGetAsBotnetThreatFeedResponse400>> radarGetAsBotnetThreatFeed({int? limit, int? offset, RadarGetAsBotnetThreatFeedMetric? metric, String? date, String? compareDateRange, String? location, List<String>? asn, RadarGetAsBotnetThreatFeedSortOrder? sortOrder, RadarGetAsBotnetThreatFeedFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (metric != null) {
  queryParameters['metric'] = metric.toJson();
}
if (date != null) {
  queryParameters['date'] = date;
}
if (compareDateRange != null) {
  queryParameters['compareDateRange'] = compareDateRange;
}
if (location != null) {
  queryParameters['location'] = location;
}
if (asn != null) {
for (final item in asn) {
  queryParametersList.add(ApiQueryParameter(name: 'asn', value: item));
}
}
if (sortOrder != null) {
  queryParameters['sortOrder'] = sortOrder.toJson();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/entities/asns/botnet_threat_feed',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetAsBotnetThreatFeedResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetAsBotnetThreatFeedResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get AS details by IP address
///
/// Retrieves the requested autonomous system information based on IP address. Population estimates come from APNIC (refer to https://labs.apnic.net/?p=526).
///
/// `GET /radar/entities/asns/ip`
Future<ApiResult<RadarGetEntitiesAsnByIpResponseResult, RadarGetEntitiesAsnByIpResponse404>> radarGetEntitiesAsnByIp({required String ip, RadarGetEntitiesAsnByIpFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['ip'] = ip;
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/entities/asns/ip',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetEntitiesAsnByIpResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetEntitiesAsnByIpResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
