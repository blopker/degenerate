// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/load_balancing_identifier.dart';import '../models/load_balancing_monitor.dart';import '../models/load_balancing_monitor_editable.dart';import '../models/load_balancing_monitor_references_response_result.dart';import '../models/load_balancing_preview_id.dart';import '../models/response_single30_result.dart';/// LoadBalancerMonitorsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LoadBalancerMonitorsApi with ApiExecutor {const LoadBalancerMonitorsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Monitors
///
/// List configured monitors for a user.
///
/// `GET /user/load_balancers/monitors`
Future<ApiResult<List<LoadBalancingMonitor>, Never>> loadBalancerMonitorsListMonitors({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/monitors',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => LoadBalancingMonitor.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Monitor
///
/// Create a configured monitor.
///
/// `POST /user/load_balancers/monitors`
Future<ApiResult<ResponseSingle30Result, Never>> loadBalancerMonitorsCreateMonitor({required LoadBalancingMonitorEditable body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user/load_balancers/monitors',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,);
  },
);
 } 
/// Monitor Details
///
/// List a single configured monitor for a user.
///
/// `GET /user/load_balancers/monitors/{monitor_id}`
Future<ApiResult<ResponseSingle30Result, Never>> loadBalancerMonitorsMonitorDetails({required LoadBalancingIdentifier monitorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,);
  },
);
 } 
/// Update Monitor
///
/// Modify a configured monitor.
///
/// `PUT /user/load_balancers/monitors/{monitor_id}`
Future<ApiResult<ResponseSingle30Result, Never>> loadBalancerMonitorsUpdateMonitor({required LoadBalancingIdentifier monitorId, required LoadBalancingMonitorEditable body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/user/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,);
  },
);
 } 
/// Patch Monitor
///
/// Apply changes to an existing monitor, overwriting the supplied properties.
///
/// `PATCH /user/load_balancers/monitors/{monitor_id}`
Future<ApiResult<ResponseSingle30Result, Never>> loadBalancerMonitorsPatchMonitor({required LoadBalancingIdentifier monitorId, required LoadBalancingMonitorEditable body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/user/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,);
  },
);
 } 
/// Delete Monitor
///
/// Delete a configured monitor.
///
/// `DELETE /user/load_balancers/monitors/{monitor_id}`
Future<ApiResult<ResponseSingle30Result, Never>> loadBalancerMonitorsDeleteMonitor({required LoadBalancingIdentifier monitorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/user/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,);
  },
);
 } 
/// Preview Monitor
///
/// Preview pools using the specified monitor with provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.
///
/// `POST /user/load_balancers/monitors/{monitor_id}/preview`
Future<ApiResult<ResponseSingle30Result, Never>> loadBalancerMonitorsPreviewMonitor({required LoadBalancingIdentifier monitorId, required LoadBalancingMonitorEditable body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}/preview',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,);
  },
);
 } 
/// List Monitor References
///
/// Get the list of resources that reference the provided monitor.
///
/// `GET /user/load_balancers/monitors/{monitor_id}/references`
Future<ApiResult<List<LoadBalancingMonitorReferencesResponseResult>, Never>> loadBalancerMonitorsListMonitorReferences({required LoadBalancingIdentifier monitorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/monitors/${Uri.encodeComponent(monitorId.toString())}/references',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => LoadBalancingMonitorReferencesResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Preview Result
///
/// Get the result of a previous preview operation using the provided preview_id.
///
/// `GET /user/load_balancers/preview/{preview_id}`
Future<ApiResult<ResponseSingle30Result, Never>> loadBalancerMonitorsPreviewResult({required LoadBalancingPreviewId previewId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/load_balancers/preview/${Uri.encodeComponent(previewId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,);
  },
);
 } 
 }
