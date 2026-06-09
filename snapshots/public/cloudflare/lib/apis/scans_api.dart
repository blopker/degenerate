// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_get_open_ports_response_result.dart';import '../models/post_config_create_request.dart';import '../models/post_config_update_request.dart';import '../models/response_common13.dart';import '../models/scan_config.dart';/// ScansApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ScansApi with ApiExecutor {const ScansApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Scan Configs
///
/// `GET /accounts/{account_id}/cloudforce-one/scans/config`
Future<ApiResult<List<ScanConfig>?, ResponseCommon13>> getConfigFetch({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/scans/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ScanConfig.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ResponseCommon13.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new Scan Config
///
/// `POST /accounts/{account_id}/cloudforce-one/scans/config`
Future<ApiResult<ScanConfig?, ResponseCommon13>> postConfigCreate({required String accountId, PostConfigCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/scans/config',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ScanConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommon13.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an existing Scan Config
///
/// `PATCH /accounts/{account_id}/cloudforce-one/scans/config/{config_id}`
Future<ApiResult<ScanConfig?, ResponseCommon13>> postConfigUpdate({required String accountId, required String configId, PostConfigUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/scans/config/${Uri.encodeComponent(configId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ScanConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommon13.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Scan Config
///
/// `DELETE /accounts/{account_id}/cloudforce-one/scans/config/{config_id}`
Future<ApiResult<Map<String, dynamic>, ResponseCommon13>> deleteDeleteScans({required String accountId, required String configId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/scans/config/${Uri.encodeComponent(configId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
  onError: (response) {
    return ResponseCommon13.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the Latest Scan Result
///
/// `GET /accounts/{account_id}/cloudforce-one/scans/results/{config_id}`
Future<ApiResult<GetGetOpenPortsResponseResult, ResponseCommon13>> getGetOpenPorts({required String accountId, required String configId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/scans/results/${Uri.encodeComponent(configId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return GetGetOpenPortsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCommon13.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
