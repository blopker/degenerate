// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waiting_room_delete_waiting_room_rule_response4_xx_result_info.dart';import 'waitingroom_messages2.dart';@immutable final class WaitingRoomDeleteWaitingRoomRuleResponse4Xx {const WaitingRoomDeleteWaitingRoomRuleResponse4Xx({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory WaitingRoomDeleteWaitingRoomRuleResponse4Xx.fromJson(Map<String, dynamic> json) { return WaitingRoomDeleteWaitingRoomRuleResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => WaitingroomMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WaitingroomMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? WaitingRoomDeleteWaitingRoomRuleResponse4XxResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] as Map<String, dynamic>?,
); }

final List<WaitingroomMessages2> errors;

final List<WaitingroomMessages2> messages;

/// Whether the API call was successful.
final bool success;

final WaitingRoomDeleteWaitingRoomRuleResponse4XxResultInfo? resultInfo;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
WaitingRoomDeleteWaitingRoomRuleResponse4Xx copyWith({List<WaitingroomMessages2>? errors, List<WaitingroomMessages2>? messages, bool? success, WaitingRoomDeleteWaitingRoomRuleResponse4XxResultInfo Function()? resultInfo, Map<String, dynamic>? Function()? result, }) { return WaitingRoomDeleteWaitingRoomRuleResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingRoomDeleteWaitingRoomRuleResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'WaitingRoomDeleteWaitingRoomRuleResponse4Xx(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
