// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'builds_pagination_info.dart';import 'builds_trigger_response.dart';import 'list_triggers_by_script_response_errors.dart';@immutable final class ListTriggersByScriptResponse {const ListTriggersByScriptResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ListTriggersByScriptResponse.fromJson(Map<String, dynamic> json) { return ListTriggersByScriptResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ListTriggersByScriptResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  result: (json['result'] as List<dynamic>).map((e) => BuildsTriggerResponse.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? BuildsPaginationInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<ListTriggersByScriptResponseErrors> errors;

final List<String> messages;

final List<BuildsTriggerResponse> result;

final BuildsPaginationInfo? resultInfo;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages,
  'result': result.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ListTriggersByScriptResponse copyWith({List<ListTriggersByScriptResponseErrors>? errors, List<String>? messages, List<BuildsTriggerResponse>? result, BuildsPaginationInfo Function()? resultInfo, bool? success, }) { return ListTriggersByScriptResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListTriggersByScriptResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), resultInfo, success); } 
@override String toString() { return 'ListTriggersByScriptResponse(errors: $errors, messages: $messages, result: $result, resultInfo: $resultInfo, success: $success)'; } 
 }
