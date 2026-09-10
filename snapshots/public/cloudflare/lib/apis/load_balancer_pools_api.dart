// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/load_balancer_pools_create_pool_request.dart';import '../models/load_balancer_pools_create_pool_response4xx.dart';import '../models/load_balancer_pools_delete_pool_response4xx.dart';import '../models/load_balancer_pools_list_pool_references_response4xx.dart';import '../models/load_balancer_pools_list_pools_response4xx.dart';import '../models/load_balancer_pools_patch_pool_request.dart';import '../models/load_balancer_pools_patch_pool_response4xx.dart';import '../models/load_balancer_pools_patch_pools_request.dart';import '../models/load_balancer_pools_patch_pools_response4xx.dart';import '../models/load_balancer_pools_pool_details_response4xx.dart';import '../models/load_balancer_pools_pool_health_details_response4xx.dart';import '../models/load_balancer_pools_preview_pool_response4xx.dart';import '../models/load_balancer_pools_update_pool_request.dart';import '../models/load_balancer_pools_update_pool_response4xx.dart';import '../models/load_balancing_health_details_result.dart';import '../models/load_balancing_monitor_editable.dart';import '../models/load_balancing_pool.dart';import '../models/load_balancing_pools_references_response_result.dart';import '../models/load_balancing_preview_response_result.dart';import '../models/load_balancing_schemas_id_response_result.dart';import '../models/load_balancing_schemas_identifier.dart';/// LoadBalancerPoolsApi operations.
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
Future<ApiResult<List<LoadBalancingPool>, LoadBalancerPoolsListPoolsResponse4xx>> loadBalancerPoolsListPools({String? monitor, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (monitor != null) {
  queryParameters['monitor'] = monitor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/pools',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => LoadBalancingPool.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsListPoolsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Create Pool
///
/// Create a new pool.
///
/// `POST /user/load_balancers/pools`
Future<ApiResult<LoadBalancingPool, LoadBalancerPoolsCreatePoolResponse4xx>> loadBalancerPoolsCreatePool({required LoadBalancerPoolsCreatePoolRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user/load_balancers/pools',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingPool.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsCreatePoolResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Patch Pools
///
/// Apply changes to a number of existing pools, overwriting the supplied properties. Pools are ordered by ascending `name`. Returns the list of affected pools. Supports the standard pagination query parameters, either `limit`/`offset` or `per_page`/`page`.
///
/// `PATCH /user/load_balancers/pools`
Future<ApiResult<List<LoadBalancingPool>, LoadBalancerPoolsPatchPoolsResponse4xx>> loadBalancerPoolsPatchPools({required LoadBalancerPoolsPatchPoolsRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/user/load_balancers/pools',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => LoadBalancingPool.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsPatchPoolsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Pool Details
///
/// Fetch a single configured pool.
///
/// `GET /user/load_balancers/pools/{pool_id}`
Future<ApiResult<LoadBalancingPool, LoadBalancerPoolsPoolDetailsResponse4xx>> loadBalancerPoolsPoolDetails({required LoadBalancingSchemasIdentifier poolId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingPool.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsPoolDetailsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Update Pool
///
/// Modify a configured pool.
///
/// `PUT /user/load_balancers/pools/{pool_id}`
Future<ApiResult<LoadBalancingPool, LoadBalancerPoolsUpdatePoolResponse4xx>> loadBalancerPoolsUpdatePool({required LoadBalancingSchemasIdentifier poolId, required LoadBalancerPoolsUpdatePoolRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingPool.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsUpdatePoolResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Patch Pool
///
/// Apply changes to an existing pool, overwriting the supplied properties.
///
/// `PATCH /user/load_balancers/pools/{pool_id}`
Future<ApiResult<LoadBalancingPool, LoadBalancerPoolsPatchPoolResponse4xx>> loadBalancerPoolsPatchPool({required LoadBalancingSchemasIdentifier poolId, required LoadBalancerPoolsPatchPoolRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingPool.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsPatchPoolResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Delete Pool
///
/// Delete a configured pool.
///
/// `DELETE /user/load_balancers/pools/{pool_id}`
Future<ApiResult<LoadBalancingSchemasIdResponseResult, LoadBalancerPoolsDeletePoolResponse4xx>> loadBalancerPoolsDeletePool({required LoadBalancingSchemasIdentifier poolId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsDeletePoolResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Pool Health Details
///
/// Fetch the latest pool health status for a single pool.
///
/// `GET /user/load_balancers/pools/{pool_id}/health`
Future<ApiResult<LoadBalancingHealthDetailsResult, LoadBalancerPoolsPoolHealthDetailsResponse4xx>> loadBalancerPoolsPoolHealthDetails({required LoadBalancingSchemasIdentifier poolId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}/health',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingHealthDetailsResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsPoolHealthDetailsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Preview Pool
///
/// Preview pool health using provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.
///
/// `POST /user/load_balancers/pools/{pool_id}/preview`
Future<ApiResult<LoadBalancingPreviewResponseResult, LoadBalancerPoolsPreviewPoolResponse4xx>> loadBalancerPoolsPreviewPool({required LoadBalancingSchemasIdentifier poolId, required LoadBalancingMonitorEditable body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}/preview',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingPreviewResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsPreviewPoolResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// List Pool References
///
/// Get the list of resources that reference the provided pool.
///
/// `GET /user/load_balancers/pools/{pool_id}/references`
Future<ApiResult<List<LoadBalancingPoolsReferencesResponseResult>, LoadBalancerPoolsListPoolReferencesResponse4xx>> loadBalancerPoolsListPoolReferences({required LoadBalancingSchemasIdentifier poolId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/pools/${Uri.encodeComponent(poolId.toString())}/references',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => LoadBalancingPoolsReferencesResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return LoadBalancerPoolsListPoolReferencesResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
