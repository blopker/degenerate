// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_entities_ip_format.dart';import '../models/radar_get_entities_ip_response.dart';import '../models/radar_get_entities_ip_response404.dart';/// RadarIpApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarIpApi with ApiExecutor {const RadarIpApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get IP address details
///
/// Retrieves IP address information.
///
/// `GET /radar/entities/ip`
Future<ApiResult<RadarGetEntitiesIpResponse, RadarGetEntitiesIpResponse404>> radarGetEntitiesIp({required String ip, RadarGetEntitiesIpFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['ip'] = ip;
if (format != null) queryParameters['format'] = format.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/entities/ip',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetEntitiesIpResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetEntitiesIpResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
