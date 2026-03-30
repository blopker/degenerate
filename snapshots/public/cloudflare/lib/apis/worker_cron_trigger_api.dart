// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/worker_cron_trigger_get_cron_triggers_response_result.dart';import '../models/worker_cron_trigger_update_cron_triggers_response_result.dart';import '../models/workers_identifier.dart';import '../models/workers_schedule.dart';import '../models/workers_script_name.dart';/// WorkerCronTriggerApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkerCronTriggerApi with ApiExecutor {const WorkerCronTriggerApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Cron Triggers
///
/// Fetches Cron Triggers for a Worker.
///
/// `GET /accounts/{account_id}/workers/scripts/{script_name}/schedules`
Future<ApiResult<WorkerCronTriggerGetCronTriggersResponseResult, Never>> workerCronTriggerGetCronTriggers({required WorkersIdentifier accountId, required WorkersScriptName scriptName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/schedules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkerCronTriggerGetCronTriggersResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Update Cron Triggers
///
/// Updates Cron Triggers for a Worker.
///
/// `PUT /accounts/{account_id}/workers/scripts/{script_name}/schedules`
Future<ApiResult<WorkerCronTriggerUpdateCronTriggersResponseResult, Never>> workerCronTriggerUpdateCronTriggers({required WorkersIdentifier accountId, required WorkersScriptName scriptName, required List<WorkersSchedule> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/scripts/${Uri.encodeComponent(scriptName.toString())}/schedules',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WorkerCronTriggerUpdateCronTriggersResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
 }
