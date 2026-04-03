// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteDeleteScansResponse {const DeleteDeleteScansResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory DeleteDeleteScansResponse.fromJson(Map<String, dynamic> json) { return DeleteDeleteScansResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  result: json['result'] as Map<String, dynamic>,
  success: json['success'] as bool,
); }

final List<String> errors;

final List<String> messages;

final Map<String,dynamic> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors,
  'messages': messages,
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
DeleteDeleteScansResponse copyWith({List<String>? errors, List<String>? messages, Map<String,dynamic>? result, bool? success, }) { return DeleteDeleteScansResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteDeleteScansResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'DeleteDeleteScansResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
