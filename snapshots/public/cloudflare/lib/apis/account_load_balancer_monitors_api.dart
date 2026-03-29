// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/load_balancing_components_schemas_identifier.dart';import '../models/load_balancing_identifier.dart';import '../models/load_balancing_monitor_editable.dart';import '../models/load_balancing_schemas_preview_id.dart';import '../models/response_common42.dart';/// AccountLoadBalancerMonitorsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountLoadBalancerMonitorsApi with ApiExecutor {const AccountLoadBalancerMonitorsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Monitors
///
/// List configured monitors for an account.
///
/// `GET /accounts/{account_id}/load_balancers/monitors`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorsListMonitors({required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitors',
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
/// Create Monitor
///
/// Create a configured monitor.
///
/// `POST /accounts/{account_id}/load_balancers/monitors`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorsCreateMonitor({required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorEditable body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitors',
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
/// Monitor Details
///
/// List a single configured monitor for an account.
///
/// `GET /accounts/{account_id}/load_balancers/monitors/{monitor_id}`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorsMonitorDetails({required LoadBalancingIdentifier monitorId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}',
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
/// Update Monitor
///
/// Modify a configured monitor.
///
/// `PUT /accounts/{account_id}/load_balancers/monitors/{monitor_id}`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorsUpdateMonitor({required LoadBalancingIdentifier monitorId, required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorEditable body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}',
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
/// Patch Monitor
///
/// Apply changes to an existing monitor, overwriting the supplied properties.
///
/// `PATCH /accounts/{account_id}/load_balancers/monitors/{monitor_id}`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorsPatchMonitor({required LoadBalancingIdentifier monitorId, required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorEditable body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}',
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
/// Delete Monitor
///
/// Delete a configured monitor.
///
/// `DELETE /accounts/{account_id}/load_balancers/monitors/{monitor_id}`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorsDeleteMonitor({required LoadBalancingIdentifier monitorId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}',
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
/// Preview Monitor
///
/// Preview pools using the specified monitor with provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.
///
/// `POST /accounts/{account_id}/load_balancers/monitors/{monitor_id}/preview`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorsPreviewMonitor({required LoadBalancingIdentifier monitorId, required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorEditable body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}/preview',
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
/// List Monitor References
///
/// Get the list of resources that reference the provided monitor.
///
/// `GET /accounts/{account_id}/load_balancers/monitors/{monitor_id}/references`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorsListMonitorReferences({required LoadBalancingIdentifier monitorId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}/references',
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
/// Preview Result
///
/// Get the result of a previous preview operation using the provided preview_id.
///
/// `GET /accounts/{account_id}/load_balancers/preview/{preview_id}`
Future<ApiResult<ResponseCommon42, Never>> accountLoadBalancerMonitorsPreviewResult({required LoadBalancingSchemasPreviewId previewId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/preview/${Uri.encodeComponent(previewId.toString())}',
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
