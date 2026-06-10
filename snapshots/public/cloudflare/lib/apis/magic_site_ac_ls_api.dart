// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_acl_update_request.dart';import '../models/magic_acls_add_single_request.dart';import '../models/magic_identifier.dart';import '../models/response_common48_result.dart';/// MagicSiteAcLsApi operations.
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
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteAclsListAcls({required MagicIdentifier accountId, required MagicIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls',
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
/// Create a new Site ACL
///
/// Creates a new Site ACL.
///
/// `POST /accounts/{account_id}/magic/sites/{site_id}/acls`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteAclsCreateAcl({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicAclsAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Site ACL Details
///
/// Get a specific Site ACL.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteAclsAclDetails({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
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
/// Update Site ACL
///
/// Update a specific Site ACL.
///
/// `PUT /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteAclsUpdateAcl({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, required MagicAclUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Patch Site ACL
///
/// Patch a specific Site ACL.
///
/// `PATCH /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteAclsPatchAcl({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, required MagicAclUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete Site ACL
///
/// Remove a specific Site ACL.
///
/// `DELETE /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicSiteAclsDeleteAcl({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
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
