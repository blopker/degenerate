// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common62.dart';import '../models/smartshield_identifier.dart';/// CacheReserveClearApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CacheReserveClearApi with ApiExecutor {const CacheReserveClearApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Cache Reserve Clear
///
/// You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.
///
/// `GET /zones/{zone_id}/smart_shield/cache_reserve_clear`
Future<ApiResult<ResponseCommon62, Never>> smartShieldSettingsGetCacheReserveClear({required SmartshieldIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/cache_reserve_clear',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon62.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Start Cache Reserve Clear
///
/// You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.
///
/// `POST /zones/{zone_id}/smart_shield/cache_reserve_clear`
Future<ApiResult<ResponseCommon62, Never>> smartShieldSettingsStartCacheReserveClear({required SmartshieldIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/smart_shield/cache_reserve_clear',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon62.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
