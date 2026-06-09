// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_identifier.dart';import '../models/magic_wan.dart';import '../models/magic_wan_update_request.dart';import '../models/magic_wans_add_single_request.dart';import '../models/response_common_failure50.dart';/// MagicSiteWaNsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicSiteWaNsApi with ApiExecutor {const MagicSiteWaNsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Site WANs
///
/// Lists Site WANs associated with an account.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/wans`
Future<ApiResult<List<MagicWan>?, ResponseCommonFailure50>> magicSiteWansListWans({required MagicIdentifier accountId, required MagicIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/wans',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => MagicWan.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ResponseCommonFailure50.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new Site WAN
///
/// Creates a new Site WAN.
///
/// `POST /accounts/{account_id}/magic/sites/{site_id}/wans`
Future<ApiResult<List<MagicWan>?, ResponseCommonFailure50>> magicSiteWansCreateWan({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicWansAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/wans',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => MagicWan.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ResponseCommonFailure50.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Site WAN Details
///
/// Get a specific Site WAN.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`
Future<ApiResult<MagicWan?, ResponseCommonFailure50>> magicSiteWansWanDetails({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier wanId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/wans/${Uri.encodeComponent(wanId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicWan.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure50.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Site WAN
///
/// Update a specific Site WAN.
///
/// `PUT /accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`
Future<ApiResult<MagicWan?, ResponseCommonFailure50>> magicSiteWansUpdateWan({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier wanId, required MagicWanUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/wans/${Uri.encodeComponent(wanId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicWan.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure50.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Site WAN
///
/// Patch a specific Site WAN.
///
/// `PATCH /accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`
Future<ApiResult<MagicWan?, ResponseCommonFailure50>> magicSiteWansPatchWan({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier wanId, required MagicWanUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/wans/${Uri.encodeComponent(wanId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicWan.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure50.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Site WAN
///
/// Remove a specific Site WAN.
///
/// `DELETE /accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`
Future<ApiResult<MagicWan?, ResponseCommonFailure50>> magicSiteWansDeleteWan({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier wanId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/wans/${Uri.encodeComponent(wanId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicWan.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure50.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
