// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cache_rules_identifier.dart';import '../models/response_common10.dart';import '../models/response_common65.dart';import '../models/response_common88.dart';import '../models/speed_identifier.dart';import '../models/zone_cache_settings_change_aegis_setting_request.dart';import '../models/zone_cache_settings_change_origin_h2_max_streams_setting_request.dart';import '../models/zone_cache_settings_change_origin_max_http_version_setting_request.dart';import '../models/zone_settings_change_fonts_setting_request.dart';import '../models/zone_settings_change_speed_brain_setting_request.dart';import '../models/zones_identifier.dart';import '../models/zones_setting_name.dart';import '../models/zones_zone_settings_single_request.dart';/// ZoneSettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneSettingsApi with ApiExecutor {const ZoneSettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get zone setting
///
/// Fetch a single zone setting by name
///
/// `GET /zones/{zone_id}/settings/{setting_id}`
Future<ApiResult<ResponseCommon88, Never>> zoneSettingsGetSingleSetting({required ZonesIdentifier zoneId, required ZonesSettingName settingId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/${Uri.encodeComponent(settingId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon88.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Edit zone setting
///
/// Updates a single zone setting by the identifier
///
/// `PATCH /zones/{zone_id}/settings/{setting_id}`
Future<ApiResult<ResponseCommon88, Never>> zoneSettingsEditSingleSetting({required ZonesIdentifier zoneId, required ZonesSettingName settingId, required ZonesZoneSettingsSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/${Uri.encodeComponent(settingId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon88.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get aegis setting
///
/// Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.
///
/// `GET /zones/{zone_id}/settings/aegis`
Future<ApiResult<ResponseCommon10, Never>> zoneCacheSettingsGetAegisSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/aegis',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon10.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Change aegis setting
///
/// Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.
///
/// `PATCH /zones/{zone_id}/settings/aegis`
Future<ApiResult<ResponseCommon10, Never>> zoneCacheSettingsChangeAegisSetting({required CacheRulesIdentifier zoneId, required ZoneCacheSettingsChangeAegisSettingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/aegis',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon10.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Cloudflare Fonts setting
///
/// Enhance your website's font delivery with Cloudflare Fonts. Deliver Google Hosted fonts from your own domain,
/// boost performance, and enhance user privacy. Refer to the Cloudflare Fonts documentation for more information.
/// 
///
/// `GET /zones/{zone_id}/settings/fonts`
Future<ApiResult<ResponseCommon65, Never>> zoneSettingsGetFontsSetting({required SpeedIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/fonts',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon65.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Change Cloudflare Fonts setting
///
/// Enhance your website's font delivery with Cloudflare Fonts. Deliver Google Hosted fonts from your own domain,
/// boost performance, and enhance user privacy. Refer to the Cloudflare Fonts documentation for more information.
/// 
///
/// `PATCH /zones/{zone_id}/settings/fonts`
Future<ApiResult<ResponseCommon65, Never>> zoneSettingsChangeFontsSetting({required SpeedIdentifier zoneId, required ZoneSettingsChangeFontsSettingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/fonts',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon65.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Origin H2 Max Streams Setting
///
/// Origin H2 Max Streams configures the max number of concurrent requests that Cloudflare will send within the same connection when communicating with the origin server, if the origin supports it. Note that if your origin does not support H2 multiplexing, 5xx errors may be observed, particularly 520s. Also note that the default value is `100` for all plan types except Enterprise where it is `1`. `1` means that H2 multiplexing is disabled.
///
/// `GET /zones/{zone_id}/settings/origin_h2_max_streams`
Future<ApiResult<ResponseCommon10, Never>> zoneCacheSettingsGetOriginH2MaxStreamsSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/origin_h2_max_streams',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon10.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Change Origin H2 Max Streams Setting
///
/// Origin H2 Max Streams configures the max number of concurrent requests that Cloudflare will send within the same connection when communicating with the origin server, if the origin supports it. Note that if your origin does not support H2 multiplexing, 5xx errors may be observed, particularly 520s. Also note that the default value is `100` for all plan types except Enterprise where it is `1`. `1` means that H2 multiplexing is disabled.
///
/// `PATCH /zones/{zone_id}/settings/origin_h2_max_streams`
Future<ApiResult<ResponseCommon10, Never>> zoneCacheSettingsChangeOriginH2MaxStreamsSetting({required CacheRulesIdentifier zoneId, required ZoneCacheSettingsChangeOriginH2MaxStreamsSettingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/origin_h2_max_streams',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon10.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Origin Max HTTP Version Setting
///
/// Origin Max HTTP Setting Version sets the highest HTTP version Cloudflare will attempt to use with your origin. This setting allows Cloudflare to make HTTP/2 requests to your origin. (Refer to [Enable HTTP/2 to Origin](https://developers.cloudflare.com/cache/how-to/enable-http2-to-origin/), for more information.). The default value is "2" for all plan types except Enterprise where it is "1".
///
/// `GET /zones/{zone_id}/settings/origin_max_http_version`
Future<ApiResult<ResponseCommon10, Never>> zoneCacheSettingsGetOriginMaxHttpVersionSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/origin_max_http_version',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon10.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Change Origin Max HTTP Version Setting
///
/// Origin Max HTTP Setting Version sets the highest HTTP version Cloudflare will attempt to use with your origin. This setting allows Cloudflare to make HTTP/2 requests to your origin. (Refer to [Enable HTTP/2 to Origin](https://developers.cloudflare.com/cache/how-to/enable-http2-to-origin/), for more information.). The default value is "2" for all plan types except Enterprise where it is "1".
///
/// `PATCH /zones/{zone_id}/settings/origin_max_http_version`
Future<ApiResult<ResponseCommon10, Never>> zoneCacheSettingsChangeOriginMaxHttpVersionSetting({required CacheRulesIdentifier zoneId, required ZoneCacheSettingsChangeOriginMaxHttpVersionSettingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/origin_max_http_version',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon10.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Cloudflare Speed Brain setting
///
/// Speed Brain lets compatible browsers speculate on content which can be prefetched or preloaded, making website
/// navigation faster. Refer to the Cloudflare Speed Brain documentation for more information.
/// 
///
/// `GET /zones/{zone_id}/settings/speed_brain`
Future<ApiResult<ResponseCommon65, Never>> zoneSettingsGetSpeedBrainSetting({required SpeedIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/speed_brain',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon65.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Change Cloudflare Speed Brain setting
///
/// Speed Brain lets compatible browsers speculate on content which can be prefetched or preloaded, making website
/// navigation faster. Refer to the Cloudflare Speed Brain documentation for more information.
/// 
///
/// `PATCH /zones/{zone_id}/settings/speed_brain`
Future<ApiResult<ResponseCommon65, Never>> zoneSettingsChangeSpeedBrainSetting({required SpeedIdentifier zoneId, required ZoneSettingsChangeSpeedBrainSettingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/settings/speed_brain',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon65.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
