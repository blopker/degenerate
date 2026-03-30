// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/r2_data_catalog_account_id.dart';import '../models/r2_data_catalog_bucket_name.dart';import '../models/r2_data_catalog_catalog.dart';import '../models/r2_data_catalog_catalog_activation_response.dart';import '../models/r2_data_catalog_catalog_list.dart';import '../models/response_common_failure55.dart';/// R2CatalogManagementApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class R2CatalogManagementApi with ApiExecutor {const R2CatalogManagementApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List R2 catalogs
///
/// Returns a list of R2 buckets that have been enabled as Apache Iceberg catalogs
/// for the specified account. Each catalog represents an R2 bucket configured
/// to store Iceberg metadata and data files.
/// 
///
/// `GET /accounts/{account_id}/r2-catalog`
Future<ApiResult<R2DataCatalogCatalogList?, ResponseCommonFailure55>> listCatalogs({required R2DataCatalogAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? R2DataCatalogCatalogList.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get R2 catalog details
///
/// Retrieve detailed information about a specific R2 catalog by bucket name.
/// Returns catalog status, maintenance configuration, and credential status.
/// 
///
/// `GET /accounts/{account_id}/r2-catalog/{bucket_name}`
Future<ApiResult<R2DataCatalogCatalog?, ResponseCommonFailure55>> getCatalogDetails({required R2DataCatalogAccountId accountId, required R2DataCatalogBucketName bucketName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog/${Uri.encodeComponent(bucketName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? R2DataCatalogCatalog.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Disable R2 catalog
///
/// Disable an R2 bucket as a catalog. This operation deactivates the catalog
/// but preserves existing metadata and data files. The catalog can be
/// re-enabled later.
/// 
///
/// `POST /accounts/{account_id}/r2-catalog/{bucket_name}/disable`
Future<ApiResult<void, ResponseCommonFailure55>> disableCatalog({required R2DataCatalogAccountId accountId, required R2DataCatalogBucketName bucketName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog/${Uri.encodeComponent(bucketName.toString())}/disable',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Enable R2 bucket as a catalog
///
/// Enable an R2 bucket as an Apache Iceberg catalog. This operation creates
/// the necessary catalog infrastructure and activates the bucket for storing
/// Iceberg metadata and data files.
/// 
///
/// `POST /accounts/{account_id}/r2-catalog/{bucket_name}/enable`
Future<ApiResult<R2DataCatalogCatalogActivationResponse?, ResponseCommonFailure55>> enableCatalog({required R2DataCatalogAccountId accountId, required R2DataCatalogBucketName bucketName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog/${Uri.encodeComponent(bucketName.toString())}/enable',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? R2DataCatalogCatalogActivationResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
