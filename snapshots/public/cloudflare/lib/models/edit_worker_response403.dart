// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'edit_worker_response403_errors.dart';import 'workers_messages2.dart';@immutable final class EditWorkerResponse403 {const EditWorkerResponse403({required this.errors, required this.messages, required this.result, required this.success, });

factory EditWorkerResponse403.fromJson(Map<String, dynamic> json) { return EditWorkerResponse403(
  errors: (json['errors'] as List<dynamic>).map((e) => EditWorkerResponse403Errors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
); }

final List<EditWorkerResponse403Errors> errors;

final List<WorkersMessages2> messages;

final Map<String,dynamic>? result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
EditWorkerResponse403 copyWith({List<EditWorkerResponse403Errors>? errors, List<WorkersMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return EditWorkerResponse403(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EditWorkerResponse403 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'EditWorkerResponse403(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
