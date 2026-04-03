// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'message3.dart';@immutable final class ErrorResponse {const ErrorResponse({required this.errors, required this.messages, required this.success, this.result, });

factory ErrorResponse.fromJson(Map<String, dynamic> json) { return ErrorResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => Message3.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Message3.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
); }

final List<Message3> errors;

final List<Message3> messages;

final Map<String,dynamic>? result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ErrorResponse copyWith({List<Message3>? errors, List<Message3>? messages, Map<String, dynamic> Function()? result, bool? success, }) { return ErrorResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ErrorResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ErrorResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
