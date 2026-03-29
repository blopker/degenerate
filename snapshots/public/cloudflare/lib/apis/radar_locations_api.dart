// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_entities_location_by_alpha2_format.dart';import '../models/radar_get_entities_location_by_alpha2_response.dart';import '../models/radar_get_entities_location_by_alpha2_response404.dart';import '../models/radar_get_entities_locations_continent.dart';import '../models/radar_get_entities_locations_format.dart';import '../models/radar_get_entities_locations_response.dart';import '../models/radar_get_entities_locations_response400.dart';/// RadarLocationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarLocationsApi with ApiExecutor {const RadarLocationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List locations
///
/// Retrieves a list of locations.
///
/// `GET /radar/entities/locations`
Future<ApiResult<RadarGetEntitiesLocationsResponse, RadarGetEntitiesLocationsResponse400>> radarGetEntitiesLocations({int? limit, int? offset, String? location, String? region, String? subregion, RadarGetEntitiesLocationsContinent? continent, RadarGetEntitiesLocationsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (location != null) {
  queryParameters['location'] = location;
}
if (region != null) {
  queryParameters['region'] = region;
}
if (subregion != null) {
  queryParameters['subregion'] = subregion;
}
if (continent != null) {
  queryParameters['continent'] = continent.toJson();
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/entities/locations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetEntitiesLocationsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetEntitiesLocationsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get location details
///
/// Retrieves the requested location information. (A confidence level below `5` indicates a low level of confidence in the traffic data - normally this happens because Cloudflare has a small amount of traffic from/to this location).
///
/// `GET /radar/entities/locations/{location}`
Future<ApiResult<RadarGetEntitiesLocationByAlpha2Response, RadarGetEntitiesLocationByAlpha2Response404>> radarGetEntitiesLocationByAlpha2({required String location, RadarGetEntitiesLocationByAlpha2Format? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/entities/locations/${Uri.encodeComponent(location)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RadarGetEntitiesLocationByAlpha2Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetEntitiesLocationByAlpha2Response404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
