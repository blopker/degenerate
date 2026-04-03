// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_message.dart';import 'teams_devices_cursor_result_info.dart';@immutable final class DeleteRegistrationsResponse {const DeleteRegistrationsResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory DeleteRegistrationsResponse.fromJson(Map<String, dynamic> json) { return DeleteRegistrationsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  resultInfo: json['result_info'] != null ? TeamsDevicesCursorResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<ResponseMessage> errors;

final List<ResponseMessage> messages;

final Map<String,dynamic>? result;

final TeamsDevicesCursorResultInfo? resultInfo;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
DeleteRegistrationsResponse copyWith({List<ResponseMessage>? errors, List<ResponseMessage>? messages, Map<String, dynamic>? Function()? result, TeamsDevicesCursorResultInfo Function()? resultInfo, bool? success, }) { return DeleteRegistrationsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteRegistrationsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          resultInfo == other.resultInfo &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, resultInfo, success); } 
@override String toString() { return 'DeleteRegistrationsResponse(errors: $errors, messages: $messages, result: $result, resultInfo: $resultInfo, success: $success)'; } 
 }
