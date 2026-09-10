// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waiting_room_create_waiting_room_rule_response4xx_result_info.dart';import 'waitingroom_messages2.dart';@immutable final class WaitingRoomCreateWaitingRoomRuleResponse4xx {const WaitingRoomCreateWaitingRoomRuleResponse4xx({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory WaitingRoomCreateWaitingRoomRuleResponse4xx.fromJson(Map<String, dynamic> json) { return WaitingRoomCreateWaitingRoomRuleResponse4xx(
  errors: (json['errors'] as List<dynamic>).map((e) => WaitingroomMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WaitingroomMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? WaitingRoomCreateWaitingRoomRuleResponse4xxResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] as Map<String, dynamic>?,
); }

final List<WaitingroomMessages2> errors;

final List<WaitingroomMessages2> messages;

/// Whether the API call was successful.
final bool success;

final WaitingRoomCreateWaitingRoomRuleResponse4xxResultInfo? resultInfo;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
WaitingRoomCreateWaitingRoomRuleResponse4xx copyWith({List<WaitingroomMessages2>? errors, List<WaitingroomMessages2>? messages, bool? success, WaitingRoomCreateWaitingRoomRuleResponse4xxResultInfo? Function()? resultInfo, Map<String, dynamic>? Function()? result, }) { return WaitingRoomCreateWaitingRoomRuleResponse4xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingRoomCreateWaitingRoomRuleResponse4xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'WaitingRoomCreateWaitingRoomRuleResponse4xx(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
