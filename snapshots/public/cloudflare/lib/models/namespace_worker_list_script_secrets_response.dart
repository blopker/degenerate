// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_messages2.dart';import 'workers_secret.dart';final class NamespaceWorkerListScriptSecretsResponse {const NamespaceWorkerListScriptSecretsResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory NamespaceWorkerListScriptSecretsResponse.fromJson(Map<String, dynamic> json) { return NamespaceWorkerListScriptSecretsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>).map((e) => WorkersSecret.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersMessages2> errors;

final List<WorkersMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<WorkersSecret> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
NamespaceWorkerListScriptSecretsResponse copyWith({List<WorkersMessages2>? errors, List<WorkersMessages2>? messages, bool? success, List<WorkersSecret>? result, }) { return NamespaceWorkerListScriptSecretsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NamespaceWorkerListScriptSecretsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result)); } 
@override String toString() { return 'NamespaceWorkerListScriptSecretsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
