// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/load_balancers_create_load_balancer_request.dart';import '../models/load_balancers_patch_load_balancer_request.dart';import '../models/load_balancers_update_load_balancer_request.dart';import '../models/load_balancing_load_balancer_components_schemas_identifier.dart';import '../models/response_common42.dart';/// LoadBalancersApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LoadBalancersApi with ApiExecutor {const LoadBalancersApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Load Balancers
///
/// List configured load balancers.
///
/// `GET /zones/{zone_id}/load_balancers`
Future<ApiResult<ResponseCommon42, Never>> loadBalancersListLoadBalancers({required LoadBalancingLoadBalancerComponentsSchemasIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/load_balancers',
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
/// Create Load Balancer
///
/// Create a new load balancer.
///
/// `POST /zones/{zone_id}/load_balancers`
Future<ApiResult<ResponseCommon42, Never>> loadBalancersCreateLoadBalancer({required LoadBalancingLoadBalancerComponentsSchemasIdentifier zoneId, required LoadBalancersCreateLoadBalancerRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/load_balancers',
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
/// Load Balancer Details
///
/// Fetch a single configured load balancer.
///
/// `GET /zones/{zone_id}/load_balancers/{load_balancer_id}`
Future<ApiResult<ResponseCommon42, Never>> loadBalancersLoadBalancerDetails({required LoadBalancingLoadBalancerComponentsSchemasIdentifier zoneId, required LoadBalancingLoadBalancerComponentsSchemasIdentifier loadBalancerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/load_balancers/${Uri.encodeComponent(loadBalancerId.toString())}',
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
/// Update Load Balancer
///
/// Update a configured load balancer.
///
/// `PUT /zones/{zone_id}/load_balancers/{load_balancer_id}`
Future<ApiResult<ResponseCommon42, Never>> loadBalancersUpdateLoadBalancer({required LoadBalancingLoadBalancerComponentsSchemasIdentifier zoneId, required LoadBalancingLoadBalancerComponentsSchemasIdentifier loadBalancerId, required LoadBalancersUpdateLoadBalancerRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/load_balancers/${Uri.encodeComponent(loadBalancerId.toString())}',
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
/// Patch Load Balancer
///
/// Apply changes to an existing load balancer, overwriting the supplied properties.
///
/// `PATCH /zones/{zone_id}/load_balancers/{load_balancer_id}`
Future<ApiResult<ResponseCommon42, Never>> loadBalancersPatchLoadBalancer({required LoadBalancingLoadBalancerComponentsSchemasIdentifier zoneId, required LoadBalancingLoadBalancerComponentsSchemasIdentifier loadBalancerId, required LoadBalancersPatchLoadBalancerRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/load_balancers/${Uri.encodeComponent(loadBalancerId.toString())}',
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
/// Delete Load Balancer
///
/// Delete a configured load balancer.
///
/// `DELETE /zones/{zone_id}/load_balancers/{load_balancer_id}`
Future<ApiResult<ResponseCommon42, Never>> loadBalancersDeleteLoadBalancer({required LoadBalancingLoadBalancerComponentsSchemasIdentifier zoneId, required LoadBalancingLoadBalancerComponentsSchemasIdentifier loadBalancerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/load_balancers/${Uri.encodeComponent(loadBalancerId.toString())}',
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
