// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/iam_collection_tokens_response.dart';import '../models/iam_create_payload.dart';import '../models/iam_permissions_group_response_collection.dart';import '../models/iam_response_single_value.dart';import '../models/iam_single_token_create_response.dart';import '../models/iam_single_token_response.dart';import '../models/iam_token_base.dart';import '../models/iam_token_identifier.dart';import '../models/iam_token_verify_response_single_segment.dart';import '../models/response_single_id4.dart';import '../models/tokens_list_tokens_direction2.dart';/// TokensApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class TokensApi with ApiExecutor {const TokensApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Tokens
///
/// List all access tokens you created.
///
/// `GET /user/tokens`
Future<ApiResult<IamCollectionTokensResponse, Never>> userApiTokensListTokens({double? page, double? perPage, TokensListTokensDirection2? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/tokens',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamCollectionTokensResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Token
///
/// Create a new access token.
///
/// `POST /user/tokens`
Future<ApiResult<IamSingleTokenCreateResponse, Never>> userApiTokensCreateToken({required IamCreatePayload body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user/tokens',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamSingleTokenCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Token Details
///
/// Get information about a specific token.
///
/// `GET /user/tokens/{token_id}`
Future<ApiResult<IamSingleTokenResponse, Never>> userApiTokensTokenDetails({required IamTokenIdentifier tokenId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/tokens/${Uri.encodeComponent(tokenId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamSingleTokenResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Token
///
/// Update an existing token.
///
/// `PUT /user/tokens/{token_id}`
Future<ApiResult<IamSingleTokenResponse, Never>> userApiTokensUpdateToken({required IamTokenIdentifier tokenId, required IamTokenBase body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/user/tokens/${Uri.encodeComponent(tokenId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamSingleTokenResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Token
///
/// Destroy a token.
///
/// `DELETE /user/tokens/{token_id}`
Future<ApiResult<ResponseSingleId4, Never>> userApiTokensDeleteToken({required IamTokenIdentifier tokenId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/user/tokens/${Uri.encodeComponent(tokenId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseSingleId4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Roll Token
///
/// Roll the token secret.
///
/// `PUT /user/tokens/{token_id}/value`
Future<ApiResult<IamResponseSingleValue, Never>> userApiTokensRollToken({required IamTokenIdentifier tokenId, required Map<String,dynamic> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/user/tokens/${Uri.encodeComponent(tokenId.toString())}/value',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamResponseSingleValue.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Token Permission Groups
///
/// Find all available permission groups for API Tokens
///
/// `GET /user/tokens/permission_groups`
Future<ApiResult<IamPermissionsGroupResponseCollection, Never>> permissionGroupsListPermissionGroups({String? name, String? scope, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (scope != null) {
  queryParameters['scope'] = scope;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/tokens/permission_groups',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamPermissionsGroupResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Verify Token
///
/// Test whether a token works.
///
/// `GET /user/tokens/verify`
Future<ApiResult<IamTokenVerifyResponseSingleSegment, Never>> userApiTokensVerifyToken({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/tokens/verify',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamTokenVerifyResponseSingleSegment.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
