// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/empty_object.dart';import '../models/oidc_custom_sub.dart';/// OidcApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class OidcApi with ApiExecutor {const OidcApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get the customization template for an OIDC subject claim for an organization
///
/// Gets the customization template for an OpenID Connect (OIDC) subject claim.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `read:org` scope to use this endpoint.
///
/// `GET /orgs/{org}/actions/oidc/customization/sub`
Future<ApiResult<OidcCustomSub, Never>> oidcGetOidcCustomSubTemplateForOrg({required String org, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/actions/oidc/customization/sub',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return OidcCustomSub.fromJson(json as Map<String, dynamic>);
  },
);
 } 
/// Set the customization template for an OIDC subject claim for an organization
///
/// Creates or updates the customization template for an OpenID Connect (OIDC) subject claim.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `write:org` scope to use this endpoint.
///
/// `PUT /orgs/{org}/actions/oidc/customization/sub`
Future<ApiResult<EmptyObject, BasicError>> oidcUpdateOidcCustomSubTemplateForOrg({required String org, required OidcCustomSub body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/orgs/${Uri.encodeComponent(org)}/actions/oidc/customization/sub',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return EmptyObject.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 403 || 404:
final json = jsonDecode(response.body);
return BasicError.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
