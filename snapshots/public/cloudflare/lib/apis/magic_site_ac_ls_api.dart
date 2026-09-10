// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_acl.dart';import '../models/magic_acl_update_request.dart';import '../models/magic_acls_add_single_request.dart';import '../models/magic_identifier.dart';import '../models/response_common_failure50.dart';/// MagicSiteAcLsApi operations.
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
Future<ApiResult<List<MagicAcl>, ResponseCommonFailure50>> magicSiteAclsListAcls({required MagicIdentifier accountId, required MagicIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => MagicAcl.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure50.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a new Site ACL
///
/// Creates a new Site ACL.
///
/// `POST /accounts/{account_id}/magic/sites/{site_id}/acls`
Future<ApiResult<MagicAcl, ResponseCommonFailure50>> magicSiteAclsCreateAcl({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicAclsAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return MagicAcl.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure50.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Site ACL Details
///
/// Get a specific Site ACL.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<MagicAcl, ResponseCommonFailure50>> magicSiteAclsAclDetails({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return MagicAcl.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure50.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update Site ACL
///
/// Update a specific Site ACL.
///
/// `PUT /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<MagicAcl, ResponseCommonFailure50>> magicSiteAclsUpdateAcl({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, required MagicAclUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return MagicAcl.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure50.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Patch Site ACL
///
/// Patch a specific Site ACL.
///
/// `PATCH /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<MagicAcl, ResponseCommonFailure50>> magicSiteAclsPatchAcl({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, required MagicAclUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return MagicAcl.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure50.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete Site ACL
///
/// Remove a specific Site ACL.
///
/// `DELETE /accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`
Future<ApiResult<MagicAcl, ResponseCommonFailure50>> magicSiteAclsDeleteAcl({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicIdentifier aclId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return MagicAcl.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure50.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
