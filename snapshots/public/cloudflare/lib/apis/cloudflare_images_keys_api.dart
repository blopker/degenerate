// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/images_account_identifier.dart';import '../models/images_signing_key_identifier.dart';import '../models/response_common36_result.dart';/// CloudflareImagesKeysApi operations.
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
Future<ApiResult<ResponseCommon36Result, Never>> cloudflareImagesKeysListSigningKeys({required ImagesAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Create a new Signing Key
///
/// Create a new signing key with specified name. Returns all keys available.
///
/// `PUT /accounts/{account_id}/images/v1/keys/{signing_key_name}`
Future<ApiResult<ResponseCommon36Result, Never>> cloudflareImagesKeysAddSigningKey({required ImagesSigningKeyIdentifier signingKeyName, required ImagesAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
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
Future<ApiResult<ResponseCommon36Result, Never>> cloudflareImagesKeysDeleteSigningKey({required ImagesSigningKeyIdentifier signingKeyName, required ImagesAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
