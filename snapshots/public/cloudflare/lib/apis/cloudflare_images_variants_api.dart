// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/images_account_identifier.dart';import '../models/images_image_variant_definition.dart';import '../models/images_image_variant_identifier.dart';import '../models/images_image_variant_patch_request.dart';import '../models/images_image_variant_response.dart';import '../models/images_image_variants_response.dart';/// CloudflareImagesVariantsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CloudflareImagesVariantsApi with ApiExecutor {const CloudflareImagesVariantsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List variants
///
/// Lists existing variants.
///
/// `GET /accounts/{account_id}/images/v1/variants`
Future<ApiResult<ImagesImageVariantsResponse, Never>> cloudflareImagesVariantsListVariants({required ImagesAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/images/v1/variants',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ImagesImageVariantsResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Create a variant
///
/// Specify variants that allow you to resize images for different use cases.
///
/// `POST /accounts/{account_id}/images/v1/variants`
Future<ApiResult<ImagesImageVariantResponse, Never>> cloudflareImagesVariantsCreateAVariant({required ImagesAccountIdentifier accountId, required ImagesImageVariantDefinition body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/images/v1/variants',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ImagesImageVariantResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Variant details
///
/// Fetch details for a single variant.
///
/// `GET /accounts/{account_id}/images/v1/variants/{variant_id}`
Future<ApiResult<ImagesImageVariantResponse, Never>> cloudflareImagesVariantsVariantDetails({required ImagesImageVariantIdentifier variantId, required ImagesAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/images/v1/variants/${Uri.encodeComponent(variantId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ImagesImageVariantResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Update a variant
///
/// Updating a variant purges the cache for all images associated with the variant.
///
/// `PATCH /accounts/{account_id}/images/v1/variants/{variant_id}`
Future<ApiResult<ImagesImageVariantResponse, Never>> cloudflareImagesVariantsUpdateAVariant({required ImagesImageVariantIdentifier variantId, required ImagesAccountIdentifier accountId, required ImagesImageVariantPatchRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/images/v1/variants/${Uri.encodeComponent(variantId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ImagesImageVariantResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Delete a variant
///
/// Deleting a variant purges the cache for all images associated with the variant.
///
/// `DELETE /accounts/{account_id}/images/v1/variants/{variant_id}`
Future<ApiResult<Map<String, dynamic>, Never>> cloudflareImagesVariantsDeleteAVariant({required ImagesImageVariantIdentifier variantId, required ImagesAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/images/v1/variants/${Uri.encodeComponent(variantId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
 }
