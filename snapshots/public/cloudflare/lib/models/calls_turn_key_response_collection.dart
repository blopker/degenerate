// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'calls_messages2.dart';import 'calls_turn_key_object.dart';@immutable final class CallsTurnKeyResponseCollection {const CallsTurnKeyResponseCollection({required this.errors, required this.messages, required this.success, this.result, });

factory CallsTurnKeyResponseCollection.fromJson(Map<String, dynamic> json) { return CallsTurnKeyResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => CallsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CallsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => CallsTurnKeyObject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<CallsMessages2> errors;

final List<CallsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<CallsTurnKeyObject>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CallsTurnKeyResponseCollection copyWith({List<CallsMessages2>? errors, List<CallsMessages2>? messages, bool? success, List<CallsTurnKeyObject> Function()? result, }) { return CallsTurnKeyResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsTurnKeyResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'CallsTurnKeyResponseCollection(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
