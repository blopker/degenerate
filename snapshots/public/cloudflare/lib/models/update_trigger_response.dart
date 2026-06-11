// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'builds_pagination_info.dart';import 'builds_trigger_response.dart';import 'update_trigger_response_errors.dart';@immutable final class UpdateTriggerResponse {const UpdateTriggerResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory UpdateTriggerResponse.fromJson(Map<String, dynamic> json) { return UpdateTriggerResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => UpdateTriggerResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  result: BuildsTriggerResponse.fromJson(json['result'] as Map<String, dynamic>),
  resultInfo: json['result_info'] != null ? BuildsPaginationInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<UpdateTriggerResponseErrors> errors;

final List<String> messages;

final BuildsTriggerResponse result;

final BuildsPaginationInfo? resultInfo;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages,
  'result': result.toJson(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
UpdateTriggerResponse copyWith({List<UpdateTriggerResponseErrors>? errors, List<String>? messages, BuildsTriggerResponse? result, BuildsPaginationInfo Function()? resultInfo, bool? success, }) { return UpdateTriggerResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateTriggerResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          resultInfo == other.resultInfo &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, resultInfo, success); } 
@override String toString() { return 'UpdateTriggerResponse(errors: $errors, messages: $messages, result: $result, resultInfo: $resultInfo, success: $success)'; } 
 }
