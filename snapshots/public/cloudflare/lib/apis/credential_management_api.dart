// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/r2_data_catalog_account_id.dart';import '../models/r2_data_catalog_bucket_name.dart';import '../models/r2_data_catalog_catalog_credential_request.dart';import '../models/response_common_failure55.dart';/// CredentialManagementApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CredentialManagementApi with ApiExecutor {const CredentialManagementApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Store catalog credentials
///
/// Store authentication credentials for a catalog. These credentials are used
/// to authenticate with R2 storage when performing catalog operations.
/// 
///
/// `POST /accounts/{account_id}/r2-catalog/{bucket_name}/credential`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure55>> storeCredentials({required R2DataCatalogAccountId accountId, required R2DataCatalogBucketName bucketName, required R2DataCatalogCatalogCredentialRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog/${Uri.encodeComponent(bucketName.toString())}/credential',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
