// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'calls_messages2.dart';import 'calls_turn_key_with_key.dart';@immutable final class CallsTurnKeySingleWithSecret {const CallsTurnKeySingleWithSecret({required this.errors, required this.messages, required this.success, this.result, });

factory CallsTurnKeySingleWithSecret.fromJson(Map<String, dynamic> json) { return CallsTurnKeySingleWithSecret(
  errors: (json['errors'] as List<dynamic>).map((e) => CallsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CallsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? CallsTurnKeyWithKey.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<CallsMessages2> errors;

final List<CallsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CallsTurnKeyWithKey? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CallsTurnKeySingleWithSecret copyWith({List<CallsMessages2>? errors, List<CallsMessages2>? messages, bool? success, CallsTurnKeyWithKey Function()? result, }) { return CallsTurnKeySingleWithSecret(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsTurnKeySingleWithSecret &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'CallsTurnKeySingleWithSecret(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
