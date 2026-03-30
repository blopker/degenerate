// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cache_rules_identifier.dart';import '../models/cache_rules_smart_tiered_cache_patch.dart';import '../models/cache_rules_zone_cache_settings_response_single.dart';import '../models/smart_tiered_cache_delete_smart_tiered_cache_setting_response.dart';/// SmartTieredCacheApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SmartTieredCacheApi with ApiExecutor {const SmartTieredCacheApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Smart Tiered Cache setting
///
/// Smart Tiered Cache dynamically selects the single closest upper tier for each of your website’s origins with no configuration required, using our in-house performance and routing data. Cloudflare collects latency data for each request to an origin, and uses the latency data to determine how well any upper-tier data center is connected with an origin. As a result, Cloudflare can select the data center with the lowest latency to be the upper-tier for an origin.
///
/// `GET /zones/{zone_id}/cache/tiered_cache_smart_topology_enable`
Future<ApiResult<CacheRulesZoneCacheSettingsResponseSingle, Never>> smartTieredCacheGetSmartTieredCacheSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/tiered_cache_smart_topology_enable',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CacheRulesZoneCacheSettingsResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Smart Tiered Cache setting
///
/// Smart Tiered Cache dynamically selects the single closest upper tier for each of your website’s origins with no configuration required, using our in-house performance and routing data. Cloudflare collects latency data for each request to an origin, and uses the latency data to determine how well any upper-tier data center is connected with an origin. As a result, Cloudflare can select the data center with the lowest latency to be the upper-tier for an origin.
///
/// `PATCH /zones/{zone_id}/cache/tiered_cache_smart_topology_enable`
Future<ApiResult<CacheRulesZoneCacheSettingsResponseSingle, Never>> smartTieredCachePatchSmartTieredCacheSetting({required CacheRulesIdentifier zoneId, required CacheRulesSmartTieredCachePatch body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/tiered_cache_smart_topology_enable',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CacheRulesZoneCacheSettingsResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Smart Tiered Cache setting
///
/// Smart Tiered Cache dynamically selects the single closest upper tier for each of your website’s origins with no configuration required, using our in-house performance and routing data. Cloudflare collects latency data for each request to an origin, and uses the latency data to determine how well any upper-tier data center is connected with an origin. As a result, Cloudflare can select the data center with the lowest latency to be the upper-tier for an origin.
///
/// `DELETE /zones/{zone_id}/cache/tiered_cache_smart_topology_enable`
Future<ApiResult<SmartTieredCacheDeleteSmartTieredCacheSettingResponse, Never>> smartTieredCacheDeleteSmartTieredCacheSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/tiered_cache_smart_topology_enable',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SmartTieredCacheDeleteSmartTieredCacheSettingResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
