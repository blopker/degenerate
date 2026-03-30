// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/error_response2.dart';import '../models/no_result_response.dart';import '../models/pay_per_crawl_daric_config.dart';import '../models/pay_per_crawl_zones_can_be_enabled_payload.dart';/// PpcConfigApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PpcConfigApi with ApiExecutor {const PpcConfigApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Set can_be_enabled setting on zones
///
/// Allows an account admin to set the can_be_enabled setting on a list of zones.
///
/// `PATCH /accounts/{account_id}/pay-per-crawl/zones_can_be_enabled`
Future<ApiResult<NoResultResponse, ErrorResponse2>> payPerCrawlSetZonesCanBeEnabled({required String accountId, required PayPerCrawlZonesCanBeEnabledPayload body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/pay-per-crawl/zones_can_be_enabled',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return NoResultResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Gets the can_be_enabled zone setting
///
/// Provided a list of pay-per-crawl configured zones this method will return whether they can enable PPC or not.
///
/// `POST /accounts/{account_id}/pay-per-crawl/zones_can_be_enabled/query`
Future<ApiResult<PayPerCrawlZonesCanBeEnabledPayload?, ErrorResponse2>> payPerCrawlQueryZonesCanBeEnabled({required String accountId, required PayPerCrawlZonesCanBeEnabledPayload body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/pay-per-crawl/zones_can_be_enabled/query',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? PayPerCrawlZonesCanBeEnabledPayload.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the pay-per-crawl config
///
/// Gets the pay-per-crawl config for a zone including the bot configuration.
///
/// `GET /zones/{zone_id}/pay-per-crawl/configuration`
Future<ApiResult<PayPerCrawlDaricConfig?, ErrorResponse2>> payPerCrawlGetConfig({required String zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId)}/pay-per-crawl/configuration',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? PayPerCrawlDaricConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates pay-per-crawl config for a zone
///
/// Creates the pay-per-crawl config for a zone.
///
/// `POST /zones/{zone_id}/pay-per-crawl/configuration`
Future<ApiResult<PayPerCrawlDaricConfig?, ErrorResponse2>> payPerCrawlCreateConfig({required String zoneId, required PayPerCrawlDaricConfig body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId)}/pay-per-crawl/configuration',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? PayPerCrawlDaricConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Changes pay-per-crawl config for a zone
///
/// Changes the pay-per-crawl config for a zone.
///
/// `PATCH /zones/{zone_id}/pay-per-crawl/configuration`
Future<ApiResult<PayPerCrawlDaricConfig?, ErrorResponse2>> payPerCrawlPatchConfig({required String zoneId, required PayPerCrawlDaricConfig body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId)}/pay-per-crawl/configuration',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? PayPerCrawlDaricConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
