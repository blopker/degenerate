// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_acl_deleted_response.dart';import '../models/magic_acl_modified_response.dart';import '../models/magic_acl_single_response.dart';import '../models/magic_acl_update_request.dart';import '../models/magic_acls_add_single_request.dart';import '../models/magic_acls_collection_response.dart';import '../models/magic_identifier.dart';/// MagicSiteAcLsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicSiteAcLsApi with ApiExecutor {const MagicSiteAcLsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Site ACLs
///
/// Lists Site ACLs associated with an account.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/acls`
Future<ApiResult<MagicAclsCollectionResponse, Never>> magicSiteAclsListAcls({required MagicIdentifier accountId, required MagicIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicAclsCollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new Site ACL
///
/// Creates a new Site ACL.
///
/// `POST /accounts/{account_id}/magic/sites/{site_id}/acls`
Future<ApiResult<MagicAclSingleResponse, Never>> magicSiteAclsCreateAcl({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicAclsAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicAclSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Site ACL Details
///
/// Get a specific Site ACL.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<MagicAclSingleResponse, Never>> magicSiteAclsAclDetails({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicAclSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Site ACL
///
/// Update a specific Site ACL.
///
/// `PUT /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<MagicAclModifiedResponse, Never>> magicSiteAclsUpdateAcl({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, required MagicAclUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicAclModifiedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Site ACL
///
/// Patch a specific Site ACL.
///
/// `PATCH /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<MagicAclModifiedResponse, Never>> magicSiteAclsPatchAcl({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, required MagicAclUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicAclModifiedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Site ACL
///
/// Remove a specific Site ACL.
///
/// `DELETE /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<MagicAclDeletedResponse, Never>> magicSiteAclsDeleteAcl({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicAclDeletedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
