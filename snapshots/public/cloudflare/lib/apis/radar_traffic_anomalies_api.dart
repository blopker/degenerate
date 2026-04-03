// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_traffic_anomalies_format.dart';import '../models/radar_get_traffic_anomalies_response400.dart';import '../models/radar_get_traffic_anomalies_response_result.dart';import '../models/radar_get_traffic_anomalies_status.dart';import '../models/radar_get_traffic_anomalies_top_format.dart';import '../models/radar_get_traffic_anomalies_top_response400.dart';import '../models/radar_get_traffic_anomalies_top_response_result.dart';import '../models/radar_get_traffic_anomalies_top_status.dart';import '../models/radar_get_traffic_anomalies_type.dart';/// RadarTrafficAnomaliesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarTrafficAnomaliesApi with ApiExecutor {const RadarTrafficAnomaliesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get latest Internet traffic anomalies
///
/// Retrieves the latest Internet traffic anomalies, which are signals that might indicate an outage. These alerts are automatically detected by Radar and manually verified by our team.
///
/// `GET /radar/traffic_anomalies`
Future<ApiResult<RadarGetTrafficAnomaliesResponseResult, RadarGetTrafficAnomaliesResponse400>> radarGetTrafficAnomalies({int? limit, int? offset, String? dateRange, DateTime? dateStart, DateTime? dateEnd, RadarGetTrafficAnomaliesStatus? status, List<RadarGetTrafficAnomaliesType>? type, int? asn, String? location, String? origin, RadarGetTrafficAnomaliesFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (dateRange != null) {
  queryParameters['dateRange'] = dateRange;
}
if (dateStart != null) {
  queryParameters['dateStart'] = dateStart.toString();
}
if (dateEnd != null) {
  queryParameters['dateEnd'] = dateEnd.toString();
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (type != null) {
for (final item in type) {
  queryParametersList.add(ApiQueryParameter(name: 'type', value: item.toJson()));
}
}
if (asn != null) {
  queryParameters['asn'] = asn.toString();
}
if (location != null) {
  queryParameters['location'] = location;
}
if (origin != null) {
  queryParameters['origin'] = origin;
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/traffic_anomalies',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetTrafficAnomaliesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetTrafficAnomaliesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get top locations by total traffic anomalies
///
/// Retrieves the sum of Internet traffic anomalies, grouped by location. These anomalies are signals that might indicate an outage, automatically detected by Radar and manually verified by our team.
///
/// `GET /radar/traffic_anomalies/locations`
Future<ApiResult<RadarGetTrafficAnomaliesTopResponseResult, RadarGetTrafficAnomaliesTopResponse400>> radarGetTrafficAnomaliesTop({int? limit, String? dateRange, DateTime? dateStart, DateTime? dateEnd, RadarGetTrafficAnomaliesTopStatus? status, RadarGetTrafficAnomaliesTopFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (dateRange != null) {
  queryParameters['dateRange'] = dateRange;
}
if (dateStart != null) {
  queryParameters['dateStart'] = dateStart.toString();
}
if (dateEnd != null) {
  queryParameters['dateEnd'] = dateEnd.toString();
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/traffic_anomalies/locations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetTrafficAnomaliesTopResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetTrafficAnomaliesTopResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
