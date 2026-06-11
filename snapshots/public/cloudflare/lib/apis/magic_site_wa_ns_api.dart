// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_identifier.dart';import '../models/magic_wan_update_request.dart';import '../models/magic_wans_add_single_request.dart';import '../models/response_common48_result.dart';/// MagicSiteWaNsApi operations.
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
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteWansListWans({required MagicIdentifier accountId, required MagicIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Create a new Site WAN
///
/// Creates a new Site WAN.
///
/// `POST /accounts/{account_id}/magic/sites/{site_id}/wans`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteWansCreateWan({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicWansAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Site WAN Details
///
/// Get a specific Site WAN.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteWansWanDetails({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier wanId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update Site WAN
///
/// Update a specific Site WAN.
///
/// `PUT /accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteWansUpdateWan({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier wanId, required MagicWanUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Patch Site WAN
///
/// Patch a specific Site WAN.
///
/// `PATCH /accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteWansPatchWan({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier wanId, required MagicWanUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete Site WAN
///
/// Remove a specific Site WAN.
///
/// `DELETE /accounts/{account_id}/magic/sites/{site_id}/wans/{wan_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteWansDeleteWan({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier wanId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
