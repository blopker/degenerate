// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_status_terminate_workflow_instances_response_errors.dart';import 'wor_status_terminate_workflow_instances_response_messages.dart';import 'wor_status_terminate_workflow_instances_response_result.dart';import 'wor_status_terminate_workflow_instances_response_result_info.dart';final class WorStatusTerminateWorkflowInstancesResponse {const WorStatusTerminateWorkflowInstancesResponse({required this.errors, required this.messages, required this.result, this.resultInfo, required this.success, });

factory WorStatusTerminateWorkflowInstancesResponse.fromJson(Map<String, dynamic> json) { return WorStatusTerminateWorkflowInstancesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WorStatusTerminateWorkflowInstancesResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorStatusTerminateWorkflowInstancesResponseMessages.fromJson(e as Map<String, dynamic>)).toList(),
  result: WorStatusTerminateWorkflowInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  resultInfo: json['result_info'] != null ? WorStatusTerminateWorkflowInstancesResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<WorStatusTerminateWorkflowInstancesResponseErrors> errors;

final List<WorStatusTerminateWorkflowInstancesResponseMessages> messages;

final WorStatusTerminateWorkflowInstancesResponseResult result;

final WorStatusTerminateWorkflowInstancesResponseResultInfo? resultInfo;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
WorStatusTerminateWorkflowInstancesResponse copyWith({List<WorStatusTerminateWorkflowInstancesResponseErrors>? errors, List<WorStatusTerminateWorkflowInstancesResponseMessages>? messages, WorStatusTerminateWorkflowInstancesResponseResult? result, WorStatusTerminateWorkflowInstancesResponseResultInfo Function()? resultInfo, bool? success, }) { return WorStatusTerminateWorkflowInstancesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorStatusTerminateWorkflowInstancesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          resultInfo == other.resultInfo &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, resultInfo, success); } 
@override String toString() { return 'WorStatusTerminateWorkflowInstancesResponse(errors: $errors, messages: $messages, result: $result, resultInfo: $resultInfo, success: $success)'; } 
 }
