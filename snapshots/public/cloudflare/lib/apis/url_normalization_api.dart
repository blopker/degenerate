// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/rulesets_url_normalization.dart';import '../models/rulesets_zone_id.dart';/// UrlNormalizationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UrlNormalizationApi with ApiExecutor {const UrlNormalizationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get URL Normalization settings
///
/// Fetches the current URL Normalization settings.
///
/// `GET /zones/{zone_id}/url_normalization`
Future<ApiResult<dynamic, Never>> getUrlNormalization({required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/url_normalization',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'];
  },
);
 } 
/// Update URL Normalization settings
///
/// Updates the URL Normalization settings.
///
/// `PUT /zones/{zone_id}/url_normalization`
Future<ApiResult<dynamic, Never>> updateUrlNormalization({required RulesetsZoneId zoneId, required RulesetsUrlNormalization body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/url_normalization',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'];
  },
);
 } 
/// Delete URL Normalization settings
///
/// Deletes the URL Normalization settings.
///
/// `DELETE /zones/{zone_id}/url_normalization`
Future<ApiResult<void, Never>> deleteUrlNormalization({required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/url_normalization',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
