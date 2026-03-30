// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_identifier.dart';import '../models/magic_lan_deleted_response.dart';import '../models/magic_lan_modified_response.dart';import '../models/magic_lan_single_response.dart';import '../models/magic_lan_update_request.dart';import '../models/magic_lans_add_single_request.dart';import '../models/magic_lans_collection_response.dart';/// MagicSiteLaNsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicSiteLaNsApi with ApiExecutor {const MagicSiteLaNsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Site LANs
///
/// Lists Site LANs associated with an account.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/lans`
Future<ApiResult<MagicLansCollectionResponse, Never>> magicSiteLansListLans({required MagicIdentifier accountId, required MagicIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/lans',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicLansCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new Site LAN
///
/// Creates a new Site LAN. If the site is in high availability mode, static_addressing is required along with secondary and virtual address.
///
/// `POST /accounts/{account_id}/magic/sites/{site_id}/lans`
Future<ApiResult<MagicLansCollectionResponse, Never>> magicSiteLansCreateLan({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicLansAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/lans',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicLansCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Site LAN Details
///
/// Get a specific Site LAN.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`
Future<ApiResult<MagicLanSingleResponse, Never>> magicSiteLansLanDetails({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier lanId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/lans/${Uri.encodeComponent(lanId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicLanSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Site LAN
///
/// Update a specific Site LAN.
///
/// `PUT /accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`
Future<ApiResult<MagicLanModifiedResponse, Never>> magicSiteLansUpdateLan({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier lanId, required MagicLanUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/lans/${Uri.encodeComponent(lanId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicLanModifiedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Site LAN
///
/// Patch a specific Site LAN.
///
/// `PATCH /accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`
Future<ApiResult<MagicLanModifiedResponse, Never>> magicSiteLansPatchLan({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier lanId, required MagicLanUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/lans/${Uri.encodeComponent(lanId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicLanModifiedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Site LAN
///
/// Remove a specific Site LAN.
///
/// `DELETE /accounts/{account_id}/magic/sites/{site_id}/lans/{lan_id}`
Future<ApiResult<MagicLanDeletedResponse, Never>> magicSiteLansDeleteLan({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier lanId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/lans/${Uri.encodeComponent(lanId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicLanDeletedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
