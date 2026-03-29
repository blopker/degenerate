// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'builds_error_response_errors.dart';final class BuildsErrorResponse {const BuildsErrorResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory BuildsErrorResponse.fromJson(Map<String, dynamic> json) { return BuildsErrorResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => BuildsErrorResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<BuildsErrorResponseErrors> errors;

final List<String> messages;

final Map<String,dynamic>? result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages,
  'result': ?result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
BuildsErrorResponse copyWith({List<BuildsErrorResponseErrors>? errors, List<String>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return BuildsErrorResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsErrorResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'BuildsErrorResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
