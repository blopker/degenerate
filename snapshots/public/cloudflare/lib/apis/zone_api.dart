// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cache_purge_identifier.dart';import '../models/put_zones_zone_id_activation_check_response_result.dart';import '../models/response_single_id8_result.dart';import '../models/response_single_id_result.dart';import '../models/zone_activation_identifier.dart';import '../models/zone_purge_request.dart';import '../models/zones0_patch_request.dart';import '../models/zones_get_direction.dart';import '../models/zones_get_match.dart';import '../models/zones_get_order.dart';import '../models/zones_get_status.dart';import '../models/zones_identifier.dart';import '../models/zones_post_request.dart';import '../models/zones_zone.dart';/// ZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneApi with ApiExecutor {const ZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Zones
///
/// Lists, searches, sorts, and filters your zones. Listing zones across more than 500 accounts
/// is currently not allowed.
/// 
///
/// `GET /zones`
Future<ApiResult<List<ZonesZone>?, Never>> zonesGet({String? name, ZonesGetStatus? status, String? accountId, String? accountName, double? page, double? perPage, ZonesGetOrder? order, ZonesGetDirection? direction, ZonesGetMatch? match, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (accountId != null) {
  queryParameters['account.id'] = accountId;
}
if (accountName != null) {
  queryParameters['account.name'] = accountName;
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (match != null) {
  queryParameters['match'] = match.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ZonesZone.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Zone
///
/// `POST /zones`
Future<ApiResult<ZonesZone?, Never>> zonesPost({required ZonesPostRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZonesZone.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Zone Details
///
/// `GET /zones/{zone_id}`
Future<ApiResult<ZonesZone?, Never>> zones0Get({required ZonesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZonesZone.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Edit Zone
///
/// Edits a zone. Only one zone property can be changed at a time.
///
/// `PATCH /zones/{zone_id}`
Future<ApiResult<ZonesZone?, Never>> zones0Patch({required ZonesIdentifier zoneId, required Zones0PatchRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZonesZone.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Zone
///
/// Deletes an existing zone.
///
/// `DELETE /zones/{zone_id}`
Future<ApiResult<ResponseSingleId8Result?, Never>> zones0Delete({required ZonesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ResponseSingleId8Result.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Rerun the Activation Check
///
/// Triggeres a new activation check for a PENDING Zone. This can be
/// triggered every 5 min for paygo/ent customers, every hour for FREE
/// Zones.
///
/// `PUT /zones/{zone_id}/activation_check`
Future<ApiResult<PutZonesZoneIdActivationCheckResponseResult?, Never>> putZonesZoneIdActivationCheck({required ZoneActivationIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/activation_check',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? PutZonesZoneIdActivationCheckResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Purge Cached Content
///
/// ### Purge All Cached Content
/// Removes ALL files from Cloudflare's cache. All tiers can purge everything.
/// ````
/// {"purge_everything": true}
/// ````
/// 
/// ### Purge Cached Content by URL
/// Granularly removes one or more files from Cloudflare's cache by specifying URLs. All tiers can purge by URL.
/// 
/// To purge files with custom cache keys, include the headers used to compute the cache key as in the example. If you have a device type or geo in your cache key, you will need to include the CF-Device-Type or CF-IPCountry headers. If you have lang in your cache key, you will need to include the Accept-Language header.
/// 
/// **NB:** When including the Origin header, be sure to include the **scheme** and **hostname**. The port number can be omitted if it is the default port (80 for http, 443 for https), but must be included otherwise.
/// 
/// Single file purge example with files:
/// ````
/// {"files": `["http://www.example.com/css/styles.css", "http://www.example.com/js/index.js"]`}
/// ````
/// Single file purge example with url and header pairs:
/// ````
/// {"files": `[{url: "http://www.example.com/cat_picture.jpg", headers: { "CF-IPCountry": "US", "CF-Device-Type": "desktop", "Accept-Language": "zh-CN" }}, {url: "http://www.example.com/dog_picture.jpg", headers: { "CF-IPCountry": "EU", "CF-Device-Type": "mobile", "Accept-Language": "en-US" }}]`}
/// ````
/// 
/// ### Purge Cached Content by Tag, Host or Prefix
/// Granularly removes one or more files from Cloudflare's cache either by specifying the host, the associated Cache-Tag, or a Prefix.
/// 
/// Flex purge with tags:
/// ````
/// {"tags": `["a-cache-tag", "another-cache-tag"]`}
/// ````
/// Flex purge with hosts:
/// ````
/// {"hosts": `["www.example.com", "images.example.com"]`}
/// ````
/// Flex purge with prefixes:
/// ````
/// {"prefixes": `["www.example.com/foo", "images.example.com/bar/baz"]`}
/// ````
/// 
/// ### Availability and limits
/// please refer to [purge cache availability and limits documentation page](https://developers.cloudflare.com/cache/how-to/purge-cache/#availability-and-limits).
/// 
///
/// `POST /zones/{zone_id}/purge_cache`
Future<ApiResult<ResponseSingleIdResult?, Never>> zonePurge({required CachePurgeIdentifier zoneId, required ZonePurgeRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/purge_cache',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ResponseSingleIdResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
