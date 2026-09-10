// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloudflare_images_keys_add_signing_key_response4_xx.dart';import '../models/cloudflare_images_keys_delete_signing_key_response4_xx.dart';import '../models/cloudflare_images_keys_list_signing_keys_response4_xx.dart';import '../models/images_account_identifier.dart';import '../models/images_image_keys_response.dart';import '../models/images_signing_key_identifier.dart';/// CloudflareImagesKeysApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CloudflareImagesKeysApi with ApiExecutor {const CloudflareImagesKeysApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Signing Keys
///
/// Lists your signing keys. These can be found on your Cloudflare Images dashboard.
///
/// `GET /accounts/{account_id}/images/v1/keys`
Future<ApiResult<ImagesImageKeysResponse, CloudflareImagesKeysListSigningKeysResponse4Xx>> cloudflareImagesKeysListSigningKeys({required ImagesAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/images/v1/keys',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return ImagesImageKeysResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareImagesKeysListSigningKeysResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a new Signing Key
///
/// Create a new signing key with specified name. Returns all keys available.
///
/// `PUT /accounts/{account_id}/images/v1/keys/{signing_key_name}`
Future<ApiResult<ImagesImageKeysResponse, CloudflareImagesKeysAddSigningKeyResponse4Xx>> cloudflareImagesKeysAddSigningKey({required ImagesSigningKeyIdentifier signingKeyName, required ImagesAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/images/v1/keys/${Uri.encodeComponent(signingKeyName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return ImagesImageKeysResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareImagesKeysAddSigningKeyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete Signing Key
///
/// Delete signing key with specified name. Returns all keys available.
/// When last key is removed, a new default signing key will be generated.
/// 
///
/// `DELETE /accounts/{account_id}/images/v1/keys/{signing_key_name}`
Future<ApiResult<ImagesImageKeysResponse, CloudflareImagesKeysDeleteSigningKeyResponse4Xx>> cloudflareImagesKeysDeleteSigningKey({required ImagesSigningKeyIdentifier signingKeyName, required ImagesAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/images/v1/keys/${Uri.encodeComponent(signingKeyName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return ImagesImageKeysResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CloudflareImagesKeysDeleteSigningKeyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
