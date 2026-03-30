// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cache_rules_identifier.dart';import '../models/cache_rules_zone_cache_settings_response_single.dart';import '../models/zone_cache_settings_change_origin_post_quantum_encryption_setting_request.dart';/// OriginPostQuantumApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class OriginPostQuantumApi with ApiExecutor {const OriginPostQuantumApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Origin Post-Quantum Encryption setting
///
/// Instructs Cloudflare to use Post-Quantum (PQ) key agreement algorithms when connecting to your origin. Preferred instructs Cloudflare to opportunistically send a Post-Quantum keyshare in the first message to the origin (for fastest connections when the origin supports and prefers PQ), supported means that PQ algorithms are advertised but only used when requested by the origin, and off means that PQ algorithms are not advertised.
///
/// `GET /zones/{zone_id}/cache/origin_post_quantum_encryption`
Future<ApiResult<CacheRulesZoneCacheSettingsResponseSingle, Never>> zoneCacheSettingsGetOriginPostQuantumEncryptionSetting({required CacheRulesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/origin_post_quantum_encryption',
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
/// Change Origin Post-Quantum Encryption setting
///
/// Instructs Cloudflare to use Post-Quantum (PQ) key agreement algorithms when connecting to your origin. Preferred instructs Cloudflare to opportunistically send a Post-Quantum keyshare in the first message to the origin (for fastest connections when the origin supports and prefers PQ), supported means that PQ algorithms are advertised but only used when requested by the origin, and off means that PQ algorithms are not advertised.
///
/// `PUT /zones/{zone_id}/cache/origin_post_quantum_encryption`
Future<ApiResult<CacheRulesZoneCacheSettingsResponseSingle, Never>> zoneCacheSettingsChangeOriginPostQuantumEncryptionSetting({required CacheRulesIdentifier zoneId, required ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cache/origin_post_quantum_encryption',
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
 }
