// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/load_balancing_components_schemas_identifier.dart';import '../models/load_balancing_identifier.dart';import '../models/load_balancing_monitor_group.dart';import '../models/load_balancing_schemas_identifier.dart';import '../models/response_common42.dart';/// AccountLoadBalancerMonitorGroupsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountLoadBalancerMonitorGroupsApi with ApiExecutor {const AccountLoadBalancerMonitorGroupsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Monitor Groups
///
/// List configured monitor groups.
///
/// `GET /accounts/{account_id}/load_balancers/monitor_groups`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorGroupsListMonitorGroups({required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups',
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
/// Create Monitor Group
///
/// Create a new monitor group.
///
/// `POST /accounts/{account_id}/load_balancers/monitor_groups`
Future<ApiResult<ResponseCommon42, ResponseCommon42>> accountLoadBalancerMonitorGroupsCreateMonitorGroup({required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorGroup body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Monitor Group Details
///
/// Fetch a single configured monitor group.
///
/// `GET /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorGroupsMonitorGroupDetails({required LoadBalancingSchemasIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}',
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
/// Update Monitor Group
///
/// Modify a configured monitor group.
///
/// `PUT /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`
Future<ApiResult<ResponseCommon42, ResponseCommon42>> accountLoadBalancerMonitorGroupsUpdateMonitorGroup({required LoadBalancingSchemasIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorGroup body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Monitor Group
///
/// Apply changes to an existing monitor group, overwriting the supplied properties.
///
/// `PATCH /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`
Future<ApiResult<ResponseCommon42, ResponseCommon42>> accountLoadBalancerMonitorGroupsPatchMonitorGroup({required LoadBalancingSchemasIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorGroup body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Monitor Group
///
/// Delete a configured monitor group.
///
/// `DELETE /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`
Future<ApiResult<ResponseCommon42, ResponseCommon42>> accountLoadBalancerMonitorGroupsDeleteMonitorGroup({required LoadBalancingSchemasIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommon42.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Monitor Group References
///
/// Get the list of resources that reference the provided monitor group.
///
/// `GET /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}/references`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorGroupsListMonitorGroupReferences({required LoadBalancingIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}/references',
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
