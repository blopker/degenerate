// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/list_tables_response.dart';import '../models/r2_data_catalog_account_id.dart';import '../models/r2_data_catalog_bucket_name.dart';import '../models/response_common_failure55.dart';/// TableManagementApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class TableManagementApi with ApiExecutor {const TableManagementApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List tables in namespace
///
/// Returns a list of tables in the specified namespace within an R2 catalog.
/// Supports pagination for efficient traversal of large table collections.
/// 
///
/// `GET /accounts/{account_id}/r2-catalog/{bucket_name}/namespaces/{namespace}/tables`
Future<ApiResult<ListTablesResponse, ResponseCommonFailure55>> listTables({required R2DataCatalogAccountId accountId, required R2DataCatalogBucketName bucketName, required String namespace, String? pageToken, int? pageSize, bool? returnUuids, bool? returnDetails, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (pageToken != null) {
  queryParameters['page_token'] = pageToken;
}
if (pageSize != null) {
  queryParameters['page_size'] = pageSize.toString();
}
if (returnUuids != null) {
  queryParameters['return_uuids'] = returnUuids.toString();
}
if (returnDetails != null) {
  queryParameters['return_details'] = returnDetails.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog/${Uri.encodeComponent(bucketName.toString())}/namespaces/${Uri.encodeComponent(namespace)}/tables',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListTablesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
