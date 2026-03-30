// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/worker_placement_list_regions_response.dart';import '../models/workers_identifier.dart';/// WorkerPlacementApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkerPlacementApi with ApiExecutor {const WorkerPlacementApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Placement Regions
///
/// Returns a list of available placement regions organized by cloud provider. These regions can be used to configure Smart Placement for Workers.
///
/// `GET /accounts/{account_id}/workers/placement/regions`
Future<ApiResult<WorkerPlacementListRegionsResponse, Never>> workerPlacementListRegions({required WorkersIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/placement/regions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorkerPlacementListRegionsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
