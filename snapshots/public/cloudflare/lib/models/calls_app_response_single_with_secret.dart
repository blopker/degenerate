// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'calls_app_with_secret.dart';import 'calls_messages2.dart';@immutable final class CallsAppResponseSingleWithSecret {const CallsAppResponseSingleWithSecret({required this.errors, required this.messages, required this.success, this.result, });

factory CallsAppResponseSingleWithSecret.fromJson(Map<String, dynamic> json) { return CallsAppResponseSingleWithSecret(
  errors: (json['errors'] as List<dynamic>).map((e) => CallsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CallsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? CallsAppWithSecret.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<CallsMessages2> errors;

final List<CallsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CallsAppWithSecret? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CallsAppResponseSingleWithSecret copyWith({List<CallsMessages2>? errors, List<CallsMessages2>? messages, bool? success, CallsAppWithSecret Function()? result, }) { return CallsAppResponseSingleWithSecret(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsAppResponseSingleWithSecret &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'CallsAppResponseSingleWithSecret(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
