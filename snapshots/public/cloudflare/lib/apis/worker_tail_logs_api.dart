// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_accountsaccount_id_workers_scriptsscript_name_tails_response.dart';import '../models/response_common80.dart';import '../models/worker_tail_logs_start_tail_response.dart';import '../models/workers_identifier.dart';import '../models/workers_script_name.dart';/// WorkerTailLogsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkerTailLogsApi with ApiExecutor {const WorkerTailLogsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Tails
///
/// Get list of tails currently deployed on a Worker.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/tails`
Future<ApiResult<GetAccountsaccountIdWorkersScriptsscriptNameTailsResponse, Never>> getAccountsWorkersScriptsTails({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/tails',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetAccountsaccountIdWorkersScriptsscriptNameTailsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Start Tail
///
/// Starts a tail that receives logs and exception from a Worker.
///
/// `POST /accounts/{account_id}/workers/scripts/{script_name}/tails`
Future<ApiResult<WorkerTailLogsStartTailResponse, Never>> workerTailLogsStartTail({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/tails',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorkerTailLogsStartTailResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Tail
///
/// Deletes a tail from a Worker.
///
/// `DELETE /accounts/{account_id}/workers/scripts/{script_name}/tails/{id}`
Future<ApiResult<ResponseCommon80, Never>> workerTailLogsDeleteTail({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required WorkersIdentifier id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/tails/${Uri.encodeComponent(id.toString())}',
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
 }
