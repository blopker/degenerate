// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common80.dart';import '../models/workers_identifier.dart';import '../models/workers_schemas_subdomain.dart';/// WorkerSubdomainApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkerSubdomainApi with ApiExecutor {const WorkerSubdomainApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Subdomain
///
/// Returns a Workers subdomain for an account.
///
/// `GET /accounts/{account_id}/workers/subdomain`
Future<ApiResult<ResponseCommon80, Never>> workerSubdomainGetSubdomain({required WorkersIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/subdomain',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Subdomain
///
/// Creates a Workers subdomain for an account.
///
/// `PUT /accounts/{account_id}/workers/subdomain`
Future<ApiResult<ResponseCommon80, Never>> workerSubdomainCreateSubdomain({required WorkersIdentifier accountId, required WorkersSchemasSubdomain body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/subdomain',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon80.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Subdomain
///
/// Deletes a Workers subdomain for an account.
///
/// `DELETE /accounts/{account_id}/workers/subdomain`
Future<ApiResult<void, Never>> workerSubdomainDeleteSubdomain({required WorkersIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/subdomain',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
