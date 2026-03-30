// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_maintenance_config_response.dart';import '../models/r2_data_catalog_account_id.dart';import '../models/r2_data_catalog_bucket_name.dart';import '../models/r2_data_catalog_maintenance_update_params.dart';import '../models/response_common_failure55.dart';import '../models/update_maintenance_config_response.dart';/// MaintenanceConfigurationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MaintenanceConfigurationApi with ApiExecutor {const MaintenanceConfigurationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get catalog maintenance configuration
///
/// Retrieve the maintenance configuration for a specific catalog,
/// including compaction settings and credential status.
/// 
///
/// `GET /accounts/{account_id}/r2-catalog/{bucket_name}/maintenance-configs`
Future<ApiResult<GetMaintenanceConfigResponse, ResponseCommonFailure55>> getMaintenanceConfig({required R2DataCatalogAccountId accountId, required R2DataCatalogBucketName bucketName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog/${Uri.encodeComponent(bucketName.toString())}/maintenance-configs',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetMaintenanceConfigResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update catalog maintenance configuration
///
/// Update the maintenance configuration for a catalog. This allows you to
/// enable or disable compaction and adjust target file sizes for optimization.
/// 
///
/// `POST /accounts/{account_id}/r2-catalog/{bucket_name}/maintenance-configs`
Future<ApiResult<UpdateMaintenanceConfigResponse, ResponseCommonFailure55>> updateMaintenanceConfig({required R2DataCatalogAccountId accountId, required R2DataCatalogBucketName bucketName, required R2DataCatalogMaintenanceUpdateParams body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2-catalog/${Uri.encodeComponent(bucketName.toString())}/maintenance-configs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UpdateMaintenanceConfigResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommonFailure55.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
