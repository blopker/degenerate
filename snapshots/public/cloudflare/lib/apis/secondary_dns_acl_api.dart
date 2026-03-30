// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/secondary_dns_account_identifier.dart';import '../models/secondary_dns_acl.dart';import '../models/secondary_dns_acl_create_acl_request.dart';import '../models/secondary_dns_components_schemas_id_response_result.dart';import '../models/secondary_dns_components_schemas_identifier.dart';/// SecondaryDnsAclApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SecondaryDnsAclApi with ApiExecutor {const SecondaryDnsAclApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List ACLs
///
/// List ACLs.
///
/// `GET /accounts/{account_id}/secondary_dns/acls`
Future<ApiResult<List<SecondaryDnsAcl>?, Never>> secondaryDnsAclListAcLs({required SecondaryDnsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/acls',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => SecondaryDnsAcl.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create ACL
///
/// Create ACL.
///
/// `POST /accounts/{account_id}/secondary_dns/acls`
Future<ApiResult<SecondaryDnsAcl?, Never>> secondaryDnsAclCreateAcl({required SecondaryDnsAccountIdentifier accountId, required SecondaryDnsAclCreateAclRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/acls',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SecondaryDnsAcl.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// ACL Details
///
/// Get ACL.
///
/// `GET /accounts/{account_id}/secondary_dns/acls/{acl_id}`
Future<ApiResult<SecondaryDnsAcl?, Never>> secondaryDnsAclAclDetails({required SecondaryDnsComponentsSchemasIdentifier aclId, required SecondaryDnsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SecondaryDnsAcl.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update ACL
///
/// Modify ACL.
///
/// `PUT /accounts/{account_id}/secondary_dns/acls/{acl_id}`
Future<ApiResult<SecondaryDnsAcl?, Never>> secondaryDnsAclUpdateAcl({required SecondaryDnsComponentsSchemasIdentifier aclId, required SecondaryDnsAccountIdentifier accountId, required SecondaryDnsAcl body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SecondaryDnsAcl.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete ACL
///
/// Delete ACL.
///
/// `DELETE /accounts/{account_id}/secondary_dns/acls/{acl_id}`
Future<ApiResult<SecondaryDnsComponentsSchemasIdResponseResult?, Never>> secondaryDnsAclDeleteAcl({required SecondaryDnsComponentsSchemasIdentifier aclId, required SecondaryDnsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/acls/${Uri.encodeComponent(aclId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SecondaryDnsComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
