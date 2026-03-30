// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'worker_cron_trigger_get_cron_triggers_response_result.dart';import 'workers_messages2.dart';final class WorkerCronTriggerGetCronTriggersResponse {const WorkerCronTriggerGetCronTriggersResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory WorkerCronTriggerGetCronTriggersResponse.fromJson(Map<String, dynamic> json) { return WorkerCronTriggerGetCronTriggersResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: WorkerCronTriggerGetCronTriggersResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<WorkersMessages2> errors;

final List<WorkersMessages2> messages;

/// Whether the API call was successful.
final bool success;

final WorkerCronTriggerGetCronTriggersResponseResult result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
WorkerCronTriggerGetCronTriggersResponse copyWith({List<WorkersMessages2>? errors, List<WorkersMessages2>? messages, bool? success, WorkerCronTriggerGetCronTriggersResponseResult? result, }) { return WorkerCronTriggerGetCronTriggersResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerCronTriggerGetCronTriggersResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'WorkerCronTriggerGetCronTriggersResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
