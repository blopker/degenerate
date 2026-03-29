// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/load_balancer_pools_create_pool_request.dart';import '../models/load_balancer_pools_patch_pool_request.dart';import '../models/load_balancer_pools_patch_pools_request.dart';import '../models/load_balancer_pools_update_pool_request.dart';import '../models/load_balancing_monitor_editable.dart';import '../models/load_balancing_schemas_identifier.dart';import '../models/response_common42.dart';/// LoadBalancerPoolsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LoadBalancerPoolsApi with ApiExecutor {const LoadBalancerPoolsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Pools
///
/// List configured pools.
///
/// `GET /user/load_balancers/pools`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsListPools({String? monitor, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (monitor != null) queryParameters['monitor'] = monitor;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/pools',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Pool
///
/// Create a new pool.
///
/// `POST /user/load_balancers/pools`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsCreatePool({required LoadBalancerPoolsCreatePoolRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user/load_balancers/pools',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Pools
///
/// Apply changes to a number of existing pools, overwriting the supplied properties. Pools are ordered by ascending `name`. Returns the list of affected pools. Supports the standard pagination query parameters, either `limit`/`offset` or `per_page`/`page`.
///
/// `PATCH /user/load_balancers/pools`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsPatchPools({required LoadBalancerPoolsPatchPoolsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/user/load_balancers/pools',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Pool Details
///
/// Fetch a single configured pool.
///
/// `GET /user/load_balancers/pools/{pool_id}`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsPoolDetails({required LoadBalancingSchemasIdentifier poolId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Pool
///
/// Modify a configured pool.
///
/// `PUT /user/load_balancers/pools/{pool_id}`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsUpdatePool({required LoadBalancingSchemasIdentifier poolId, required LoadBalancerPoolsUpdatePoolRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Pool
///
/// Apply changes to an existing pool, overwriting the supplied properties.
///
/// `PATCH /user/load_balancers/pools/{pool_id}`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsPatchPool({required LoadBalancingSchemasIdentifier poolId, required LoadBalancerPoolsPatchPoolRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Pool
///
/// Delete a configured pool.
///
/// `DELETE /user/load_balancers/pools/{pool_id}`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsDeletePool({required LoadBalancingSchemasIdentifier poolId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Pool Health Details
///
/// Fetch the latest pool health status for a single pool.
///
/// `GET /user/load_balancers/pools/{pool_id}/health`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsPoolHealthDetails({required LoadBalancingSchemasIdentifier poolId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}/health',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Preview Pool
///
/// Preview pool health using provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.
///
/// `POST /user/load_balancers/pools/{pool_id}/preview`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsPreviewPool({required LoadBalancingSchemasIdentifier poolId, required LoadBalancingMonitorEditable body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}/preview',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Pool References
///
/// Get the list of resources that reference the provided pool.
///
/// `GET /user/load_balancers/pools/{pool_id}/references`
Future<ApiResult<ResponseCommon42, Never>> loadBalancerPoolsListPoolReferences({required LoadBalancingSchemasIdentifier poolId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}/references',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
