// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/r2_data_catalog_account_id.dart';import '../models/r2_data_catalog_bucket_name.dart';import '../models/r2_data_catalog_maintenance_update_params.dart';import '../models/response_common_failure55.dart';import '../models/response_single39.dart';/// TableMaintenanceConfigurationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class TableMaintenanceConfigurationApi with ApiExecutor {const TableMaintenanceConfigurationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get table maintenance configuration
///
/// Retrieve the maintenance configuration for a specific table,
/// including compaction settings.
/// 
///
/// `GET /accounts/{account_id}/r2-catalog/{bucket_name}/namespaces/{namespace}/tables/{table_name}/maintenance-configs`
Future<ApiResult<ResponseSingle39, ResponseCommonFailure55>> getTableMaintenanceConfig({required R2DataCatalogAccountId accountId, required R2DataCatalogBucketName bucketName, required String namespace, required String tableName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog/${Uri.encodeComponent(bucketName.toString())}/namespaces/${Uri.encodeComponent(namespace)}/tables/${Uri.encodeComponent(tableName)}/maintenance-configs',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseSingle39.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update table maintenance configuration
///
/// Update the maintenance configuration for a specific table. This allows you to
/// enable or disable compaction and adjust target file sizes for optimization.
/// 
///
/// `POST /accounts/{account_id}/r2-catalog/{bucket_name}/namespaces/{namespace}/tables/{table_name}/maintenance-configs`
Future<ApiResult<ResponseSingle39, ResponseCommonFailure55>> updateTableMaintenanceConfig({required R2DataCatalogAccountId accountId, required R2DataCatalogBucketName bucketName, required String namespace, required String tableName, required R2DataCatalogMaintenanceUpdateParams body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog/${Uri.encodeComponent(bucketName.toString())}/namespaces/${Uri.encodeComponent(namespace)}/tables/${Uri.encodeComponent(tableName)}/maintenance-configs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseSingle39.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
