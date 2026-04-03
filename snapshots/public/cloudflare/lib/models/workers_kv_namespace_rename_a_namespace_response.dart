// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_messages2.dart';import 'workers_kv_namespace.dart';@immutable final class WorkersKvNamespaceRenameANamespaceResponse {const WorkersKvNamespaceRenameANamespaceResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory WorkersKvNamespaceRenameANamespaceResponse.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceRenameANamespaceResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersKvMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersKvMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: WorkersKvNamespace.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<WorkersKvMessages2> errors;

final List<WorkersKvMessages2> messages;

/// Whether the API call was successful.
final bool success;

final WorkersKvNamespace result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
WorkersKvNamespaceRenameANamespaceResponse copyWith({List<WorkersKvMessages2>? errors, List<WorkersKvMessages2>? messages, bool? success, WorkersKvNamespace? result, }) { return WorkersKvNamespaceRenameANamespaceResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceRenameANamespaceResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'WorkersKvNamespaceRenameANamespaceResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
