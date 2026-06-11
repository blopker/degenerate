// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cache_rules_identifier.dart';import '../models/cache_rules_result_object_delete.dart';import '../models/zone_cache_settings_change_cache_reserve_setting_request.dart';import '../models/zone_cache_settings_change_cache_reserve_setting_response_result.dart';import '../models/zone_cache_settings_change_regional_tiered_cache_setting_request.dart';import '../models/zone_cache_settings_change_regional_tiered_cache_setting_response_result.dart';import '../models/zone_cache_settings_change_variants_setting_request.dart';import '../models/zone_cache_settings_change_variants_setting_response_result.dart';import '../models/zone_cache_settings_get_cache_reserve_clear_response_result.dart';import '../models/zone_cache_settings_get_cache_reserve_setting_response_result.dart';import '../models/zone_cache_settings_get_regional_tiered_cache_setting_response_result.dart';import '../models/zone_cache_settings_get_variants_setting_response_result.dart';import '../models/zone_cache_settings_start_cache_reserve_clear_response_result.dart';/// ZoneCacheSettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneCacheSettingsApi with ApiExecutor {const ZoneCacheSettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Cache Reserve setting
///
/// Increase cache lifetimes by automatically storing all cacheable files into Cloudflare's persistent object storage buckets. Requires Cache Reserve subscription. Note: using Tiered Cache with Cache Reserve is highly recommended to reduce Reserve operations costs. See the [developer docs](https://developers.cloudflare.com/cache/about/cache-reserve) for more information.
///
/// `GET /zones/{zone_id}/cache/cache_reserve`
Future<ApiResult<ZoneCacheSettingsGetCacheReserveSettingResponseResult?, Never>> zoneCacheSettingsGetCacheReserveSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/cache_reserve',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZoneCacheSettingsGetCacheReserveSettingResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Change Cache Reserve setting
///
/// Increase cache lifetimes by automatically storing all cacheable files into Cloudflare's persistent object storage buckets. Requires Cache Reserve subscription. Note: using Tiered Cache with Cache Reserve is highly recommended to reduce Reserve operations costs. See the [developer docs](https://developers.cloudflare.com/cache/about/cache-reserve) for more information.
///
/// `PATCH /zones/{zone_id}/cache/cache_reserve`
Future<ApiResult<ZoneCacheSettingsChangeCacheReserveSettingResponseResult?, Never>> zoneCacheSettingsChangeCacheReserveSetting({required CacheRulesIdentifier zoneId, required ZoneCacheSettingsChangeCacheReserveSettingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/cache_reserve',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZoneCacheSettingsChangeCacheReserveSettingResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Cache Reserve Clear
///
/// You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.
///
/// `GET /zones/{zone_id}/cache/cache_reserve_clear`
Future<ApiResult<ZoneCacheSettingsGetCacheReserveClearResponseResult?, Never>> zoneCacheSettingsGetCacheReserveClear({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/cache_reserve_clear',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZoneCacheSettingsGetCacheReserveClearResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Start Cache Reserve Clear
///
/// You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.
///
/// `POST /zones/{zone_id}/cache/cache_reserve_clear`
Future<ApiResult<ZoneCacheSettingsStartCacheReserveClearResponseResult?, Never>> zoneCacheSettingsStartCacheReserveClear({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/cache_reserve_clear',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZoneCacheSettingsStartCacheReserveClearResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Regional Tiered Cache setting
///
/// Instructs Cloudflare to check a regional hub data center on the way to your upper tier. This can help improve performance for smart and custom tiered cache topologies.
///
/// `GET /zones/{zone_id}/cache/regional_tiered_cache`
Future<ApiResult<ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult?, Never>> zoneCacheSettingsGetRegionalTieredCacheSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/regional_tiered_cache',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Change Regional Tiered Cache setting
///
/// Instructs Cloudflare to check a regional hub data center on the way to your upper tier. This can help improve performance for smart and custom tiered cache topologies.
///
/// `PATCH /zones/{zone_id}/cache/regional_tiered_cache`
Future<ApiResult<ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult?, Never>> zoneCacheSettingsChangeRegionalTieredCacheSetting({required CacheRulesIdentifier zoneId, required ZoneCacheSettingsChangeRegionalTieredCacheSettingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/regional_tiered_cache',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get variants setting
///
/// Variant support enables caching variants of images with certain file extensions in addition to the original. This only applies when the origin server sends the 'Vary: Accept' response header. If the origin server sends 'Vary: Accept' but does not serve the variant requested, the response will not be cached. This will be indicated with BYPASS cache status in the response headers.
///
/// `GET /zones/{zone_id}/cache/variants`
Future<ApiResult<ZoneCacheSettingsGetVariantsSettingResponseResult?, Never>> zoneCacheSettingsGetVariantsSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/variants',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZoneCacheSettingsGetVariantsSettingResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Change variants setting
///
/// Variant support enables caching variants of images with certain file extensions in addition to the original. This only applies when the origin server sends the 'Vary: Accept' response header. If the origin server sends 'Vary: Accept' but does not serve the variant requested, the response will not be cached. This will be indicated with BYPASS cache status in the response headers.
///
/// `PATCH /zones/{zone_id}/cache/variants`
Future<ApiResult<ZoneCacheSettingsChangeVariantsSettingResponseResult?, Never>> zoneCacheSettingsChangeVariantsSetting({required CacheRulesIdentifier zoneId, required ZoneCacheSettingsChangeVariantsSettingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/variants',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZoneCacheSettingsChangeVariantsSettingResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete variants setting
///
/// Variant support enables caching variants of images with certain file extensions in addition to the original. This only applies when the origin server sends the 'Vary: Accept' response header. If the origin server sends 'Vary: Accept' but does not serve the variant requested, the response will not be cached. This will be indicated with BYPASS cache status in the response headers.
///
/// `DELETE /zones/{zone_id}/cache/variants`
Future<ApiResult<CacheRulesResultObjectDelete?, Never>> zoneCacheSettingsDeleteVariantsSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/variants',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? CacheRulesResultObjectDelete.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
