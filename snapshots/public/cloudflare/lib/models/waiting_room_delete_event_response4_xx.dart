// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_messages2.dart';@immutable final class WaitingRoomDeleteEventResponse4Xx {const WaitingRoomDeleteEventResponse4Xx({required this.result, required this.errors, required this.messages, required this.success, });

factory WaitingRoomDeleteEventResponse4Xx.fromJson(Map<String, dynamic> json) { return WaitingRoomDeleteEventResponse4Xx(
  result: json['result'] as Map<String, dynamic>?,
  errors: (json['errors'] as List<dynamic>).map((e) => WaitingroomMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WaitingroomMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final Map<String,dynamic>? result;

final List<WaitingroomMessages2> errors;

final List<WaitingroomMessages2> messages;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'result': ?result,
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
WaitingRoomDeleteEventResponse4Xx copyWith({Map<String, dynamic>? Function()? result, List<WaitingroomMessages2>? errors, List<WaitingroomMessages2>? messages, bool? success, }) { return WaitingRoomDeleteEventResponse4Xx(
  result: result != null ? result() : this.result,
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingRoomDeleteEventResponse4Xx &&
          result == other.result &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'WaitingRoomDeleteEventResponse4Xx(result: $result, errors: $errors, messages: $messages, success: $success)'; } 
 }
