// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_worker_response400_errors.dart';import 'workers_messages2.dart';@immutable final class CreateWorkerResponse400 {const CreateWorkerResponse400({required this.errors, required this.messages, required this.result, required this.success, });

factory CreateWorkerResponse400.fromJson(Map<String, dynamic> json) { return CreateWorkerResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => CreateWorkerResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
); }

final List<CreateWorkerResponse400Errors> errors;

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
CreateWorkerResponse400 copyWith({List<CreateWorkerResponse400Errors>? errors, List<WorkersMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return CreateWorkerResponse400(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateWorkerResponse400 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'CreateWorkerResponse400(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
