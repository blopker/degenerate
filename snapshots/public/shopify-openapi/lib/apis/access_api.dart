// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// AccessApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessApi with ApiExecutor {const AccessApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieves a list of access scopes associated to the access token.
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/accessscope#index-2020-10
///
/// `GET /admin/oauth/access_scopes.json`
Future<ApiResult<void, Never>> getAdminOauthAccessScopes({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/oauth/access_scopes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of storefront access tokens that have been issued
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#index-2020-01
///
/// `GET /admin/api/2020-01/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecated202001GetStorefrontAccessTokens({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/storefront_access_tokens.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a new storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#create-2020-01
///
/// `POST /admin/api/2020-01/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecated202001CreateStorefrontAccessTokens({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/storefront_access_tokens.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an existing storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#destroy-2020-01
///
/// `DELETE /admin/api/2020-01/storefront_access_tokens/{storefront_access_token_id}.json`
Future<ApiResult<void, Never>> deprecated202001DeleteStorefrontAccessTokensParamStorefrontAccessTokenId({required String storefrontAccessTokenId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-01/storefront_access_tokens/${Uri.encodeComponent(storefrontAccessTokenId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of storefront access tokens that have been issued
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#index-2020-04
///
/// `GET /admin/api/2020-04/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecated202004GetStorefrontAccessTokens({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/storefront_access_tokens.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a new storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#create-2020-04
///
/// `POST /admin/api/2020-04/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecated202004CreateStorefrontAccessTokens({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/storefront_access_tokens.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an existing storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#destroy-2020-04
///
/// `DELETE /admin/api/2020-04/storefront_access_tokens/{storefront_access_token_id}.json`
Future<ApiResult<void, Never>> deprecated202004DeleteStorefrontAccessTokensParamStorefrontAccessTokenId({required String storefrontAccessTokenId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-04/storefront_access_tokens/${Uri.encodeComponent(storefrontAccessTokenId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of storefront access tokens that have been issued
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#index-2020-07
///
/// `GET /admin/api/2020-07/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecated202007GetStorefrontAccessTokens({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/storefront_access_tokens.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a new storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#create-2020-07
///
/// `POST /admin/api/2020-07/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecated202007CreateStorefrontAccessTokens({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/storefront_access_tokens.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an existing storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#destroy-2020-07
///
/// `DELETE /admin/api/2020-07/storefront_access_tokens/{storefront_access_token_id}.json`
Future<ApiResult<void, Never>> deprecated202007DeleteStorefrontAccessTokensParamStorefrontAccessTokenId({required String storefrontAccessTokenId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-07/storefront_access_tokens/${Uri.encodeComponent(storefrontAccessTokenId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of storefront access tokens that have been issued
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#index-2020-10
///
/// `GET /admin/api/2020-10/storefront_access_tokens.json`
Future<ApiResult<void, Never>> getStorefrontAccessTokens({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/storefront_access_tokens.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a new storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#create-2020-10
///
/// `POST /admin/api/2020-10/storefront_access_tokens.json`
Future<ApiResult<void, Never>> createStorefrontAccessTokens({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/storefront_access_tokens.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an existing storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#destroy-2020-10
///
/// `DELETE /admin/api/2020-10/storefront_access_tokens/{storefront_access_token_id}.json`
Future<ApiResult<void, Never>> deleteStorefrontAccessTokensParamStorefrontAccessTokenId({required String storefrontAccessTokenId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-10/storefront_access_tokens/${Uri.encodeComponent(storefrontAccessTokenId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of storefront access tokens that have been issued
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#index-2021-01
///
/// `GET /admin/api/2021-01/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecated202101GetStorefrontAccessTokens({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/storefront_access_tokens.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a new storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#create-2021-01
///
/// `POST /admin/api/2021-01/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecated202101CreateStorefrontAccessTokens({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/storefront_access_tokens.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an existing storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#destroy-2021-01
///
/// `DELETE /admin/api/2021-01/storefront_access_tokens/{storefront_access_token_id}.json`
Future<ApiResult<void, Never>> deprecated202101DeleteStorefrontAccessTokensParamStorefrontAccessTokenId({required String storefrontAccessTokenId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2021-01/storefront_access_tokens/${Uri.encodeComponent(storefrontAccessTokenId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of storefront access tokens that have been issued
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#index-unstable
///
/// `GET /admin/api/unstable/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetStorefrontAccessTokens({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/storefront_access_tokens.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a new storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#create-unstable
///
/// `POST /admin/api/unstable/storefront_access_tokens.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateStorefrontAccessTokens({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/storefront_access_tokens.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an existing storefront access token
///
/// https://shopify.dev/docs/admin-api/rest/reference/access/storefrontaccesstoken#destroy-unstable
///
/// `DELETE /admin/api/unstable/storefront_access_tokens/{storefront_access_token_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableDeleteStorefrontAccessTokensParamStorefrontAccessTokenId({required String storefrontAccessTokenId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/unstable/storefront_access_tokens/${Uri.encodeComponent(storefrontAccessTokenId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
