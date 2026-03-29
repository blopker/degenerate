// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common59.dart';import '../models/secrets_store_account_identifier.dart';import '../models/secrets_store_account_tag.dart';import '../models/secrets_store_create_secret_object.dart';import '../models/secrets_store_create_store_object.dart';import '../models/secrets_store_create_store_object_system.dart';import '../models/secrets_store_delete_secret_object.dart';import '../models/secrets_store_duplicate_secret_object.dart';import '../models/secrets_store_identifier.dart';import '../models/secrets_store_list_direction.dart';import '../models/secrets_store_list_order.dart';import '../models/secrets_store_patch_secret_object.dart';import '../models/secrets_store_secrets_list_direction.dart';import '../models/secrets_store_secrets_list_order.dart';import '../models/secrets_store_store_identifier.dart';import '../models/secrets_store_system_list_direction.dart';import '../models/secrets_store_system_list_order.dart';import '../models/secrets_store_system_secrets_list_direction.dart';import '../models/secrets_store_system_secrets_list_order.dart';/// SecretsStoreApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SecretsStoreApi with ApiExecutor {const SecretsStoreApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// View secret usage
///
/// Lists the number of secrets used in the account.
///
/// `GET /accounts/{account_id}/secrets_store/quota`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreQuota({required SecretsStoreAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/quota',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List account stores
///
/// Lists all the stores in an account
///
/// `GET /accounts/{account_id}/secrets_store/stores`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreList({required SecretsStoreAccountIdentifier accountId, SecretsStoreListDirection? direction, int? page, int? perPage, SecretsStoreListOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a store
///
/// Creates a store in the account
///
/// `POST /accounts/{account_id}/secrets_store/stores`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreCreate({required SecretsStoreAccountIdentifier accountId, required List<SecretsStoreCreateStoreObject> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a store by ID
///
/// Returns details of a single store
///
/// `GET /accounts/{account_id}/secrets_store/stores/{store_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreGetStoreById({required SecretsStoreAccountIdentifier accountId, required SecretsStoreStoreIdentifier storeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores/${Uri.encodeComponent(storeId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a store
///
/// Deletes a single store
///
/// `DELETE /accounts/{account_id}/secrets_store/stores/{store_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreDeleteById({required SecretsStoreAccountIdentifier accountId, required SecretsStoreStoreIdentifier storeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores/${Uri.encodeComponent(storeId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List store secrets
///
/// Lists all store secrets
///
/// `GET /accounts/{account_id}/secrets_store/stores/{store_id}/secrets`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSecretsList({required SecretsStoreAccountIdentifier accountId, required SecretsStoreStoreIdentifier storeId, SecretsStoreSecretsListDirection? direction, int? page, int? perPage, String? search, SecretsStoreSecretsListOrder? order, List<List<String>>? scopes, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (scopes != null) {
queryParameters['scopes'] = scopes.map((item) => item.toString()).join(',');
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores/${Uri.encodeComponent(storeId.toString())}/secrets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a secret
///
/// Creates a secret in the account
///
/// `POST /accounts/{account_id}/secrets_store/stores/{store_id}/secrets`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSecretCreate({required SecretsStoreAccountIdentifier accountId, required SecretsStoreStoreIdentifier storeId, required List<SecretsStoreCreateSecretObject> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores/${Uri.encodeComponent(storeId.toString())}/secrets',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete secrets
///
/// Deletes one or more secrets
///
/// `DELETE /accounts/{account_id}/secrets_store/stores/{store_id}/secrets`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreDeleteBulk({required SecretsStoreAccountIdentifier accountId, required SecretsStoreStoreIdentifier storeId, required List<SecretsStoreDeleteSecretObject> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores/${Uri.encodeComponent(storeId.toString())}/secrets',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a secret by ID
///
/// Returns details of a single secret
///
/// `GET /accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreGetById({required SecretsStoreAccountIdentifier accountId, required SecretsStoreStoreIdentifier storeId, required SecretsStoreIdentifier secretId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores/${Uri.encodeComponent(storeId.toString())}/secrets/${Uri.encodeComponent(secretId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch a secret
///
/// Updates a single secret
///
/// `PATCH /accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStorePatchById({required SecretsStoreAccountIdentifier accountId, required SecretsStoreStoreIdentifier storeId, required SecretsStoreIdentifier secretId, required SecretsStorePatchSecretObject body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores/${Uri.encodeComponent(storeId.toString())}/secrets/${Uri.encodeComponent(secretId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a secret
///
/// Deletes a single secret
///
/// `DELETE /accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSecretDeleteById({required SecretsStoreAccountIdentifier accountId, required SecretsStoreStoreIdentifier storeId, required SecretsStoreIdentifier secretId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores/${Uri.encodeComponent(storeId.toString())}/secrets/${Uri.encodeComponent(secretId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Duplicate Secret
///
/// Duplicates the secret, keeping the value
///
/// `POST /accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}/duplicate`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreDuplicateById({required SecretsStoreAccountIdentifier accountId, required SecretsStoreStoreIdentifier storeId, required SecretsStoreIdentifier secretId, required SecretsStoreDuplicateSecretObject body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secrets_store/stores/${Uri.encodeComponent(storeId.toString())}/secrets/${Uri.encodeComponent(secretId.toString())}/duplicate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List account stores (System)
///
/// Lists all stores in an account that are managed by the calling service.
/// Only returns stores where managed_by matches the authenticated service.
/// 
///
/// `GET /system/accounts/{account_tag}/stores`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemList({required SecretsStoreAccountTag accountTag, SecretsStoreSystemListDirection? direction, int? page, int? perPage, SecretsStoreSystemListOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a store (System)
///
/// Creates a store in the account on behalf of the calling service.
/// The store will be marked as managed by the authenticated service.
/// Requires account_id in the request body.
/// 
///
/// `POST /system/accounts/{account_tag}/stores`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemCreate({required SecretsStoreAccountTag accountTag, required SecretsStoreCreateStoreObjectSystem body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a store by ID (System)
///
/// Returns details of a single store managed by the calling service.
/// Returns 404 if the store doesn't exist or is not managed by the authenticated service.
/// 
///
/// `GET /system/accounts/{account_tag}/stores/{store_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemGetStoreById({required SecretsStoreAccountTag accountTag, required SecretsStoreStoreIdentifier storeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores/${Uri.encodeComponent(storeId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a store (System)
///
/// Deletes a store managed by the calling service.
/// Returns 404 if the store doesn't exist or is not managed by the authenticated service.
/// 
///
/// `DELETE /system/accounts/{account_tag}/stores/{store_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemDeleteById({required SecretsStoreAccountTag accountTag, required SecretsStoreStoreIdentifier storeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores/${Uri.encodeComponent(storeId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List store secrets (System)
///
/// Lists all secrets in a store managed by the calling service.
/// Returns 404 if the store doesn't exist or is not managed by the authenticated service.
/// 
///
/// `GET /system/accounts/{account_tag}/stores/{store_id}/secrets`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemSecretsList({required SecretsStoreAccountTag accountTag, required SecretsStoreStoreIdentifier storeId, SecretsStoreSystemSecretsListDirection? direction, int? page, int? perPage, String? search, SecretsStoreSystemSecretsListOrder? order, List<List<String>>? scopes, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (scopes != null) {
queryParameters['scopes'] = scopes.map((item) => item.toString()).join(',');
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores/${Uri.encodeComponent(storeId.toString())}/secrets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create secrets (System)
///
/// Creates one or more secrets in a store managed by the calling service.
/// Returns 404 if the store doesn't exist or is not managed by the authenticated service.
/// 
///
/// `POST /system/accounts/{account_tag}/stores/{store_id}/secrets`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemSecretCreate({required SecretsStoreAccountTag accountTag, required SecretsStoreStoreIdentifier storeId, required List<SecretsStoreCreateSecretObject> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores/${Uri.encodeComponent(storeId.toString())}/secrets',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete secrets (System)
///
/// Deletes one or more secrets from a store managed by the calling service.
/// Returns 404 if the store doesn't exist or is not managed by the authenticated service.
/// 
///
/// `DELETE /system/accounts/{account_tag}/stores/{store_id}/secrets`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemDeleteBulk({required SecretsStoreAccountTag accountTag, required SecretsStoreStoreIdentifier storeId, required List<SecretsStoreDeleteSecretObject> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores/${Uri.encodeComponent(storeId.toString())}/secrets',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a secret by ID (System)
///
/// Returns details of a single secret from a store managed by the calling service.
/// Returns 404 if the store doesn't exist or is not managed by the authenticated service.
/// 
///
/// `GET /system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemGetById({required SecretsStoreAccountTag accountTag, required SecretsStoreStoreIdentifier storeId, required SecretsStoreIdentifier secretId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores/${Uri.encodeComponent(storeId.toString())}/secrets/${Uri.encodeComponent(secretId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch a secret (System)
///
/// Updates a single secret in a store managed by the calling service.
/// Returns 404 if the store doesn't exist or is not managed by the authenticated service.
/// 
///
/// `PATCH /system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemPatchById({required SecretsStoreAccountTag accountTag, required SecretsStoreStoreIdentifier storeId, required SecretsStoreIdentifier secretId, required SecretsStorePatchSecretObject body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores/${Uri.encodeComponent(storeId.toString())}/secrets/${Uri.encodeComponent(secretId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a secret (System)
///
/// Deletes a single secret from a store managed by the calling service.
/// Returns 404 if the store doesn't exist or is not managed by the authenticated service.
/// 
///
/// `DELETE /system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemSecretDeleteById({required SecretsStoreAccountTag accountTag, required SecretsStoreStoreIdentifier storeId, required SecretsStoreIdentifier secretId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores/${Uri.encodeComponent(storeId.toString())}/secrets/${Uri.encodeComponent(secretId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Duplicate secret (System)
///
/// Duplicates a secret in a store managed by the calling service, keeping the value.
/// Returns 404 if the store doesn't exist or is not managed by the authenticated service.
/// 
///
/// `POST /system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}/duplicate`
Future<ApiResult<ResponseCommon59, Never>> secretsStoreSystemDuplicateById({required SecretsStoreAccountTag accountTag, required SecretsStoreStoreIdentifier storeId, required SecretsStoreIdentifier secretId, required SecretsStoreDuplicateSecretObject body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/system/accounts/${Uri.encodeComponent(accountTag.toString())}/stores/${Uri.encodeComponent(storeId.toString())}/secrets/${Uri.encodeComponent(secretId.toString())}/duplicate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
