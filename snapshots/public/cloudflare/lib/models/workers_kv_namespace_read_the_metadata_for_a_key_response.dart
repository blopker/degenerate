// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_any.dart';import 'workers_kv_messages2.dart';@immutable final class WorkersKvNamespaceReadTheMetadataForAKeyResponse {const WorkersKvNamespaceReadTheMetadataForAKeyResponse({required this.errors, required this.messages, required this.success, this.result, });

factory WorkersKvNamespaceReadTheMetadataForAKeyResponse.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceReadTheMetadataForAKeyResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersKvMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersKvMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? WorkersKvAny.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<WorkersKvMessages2> errors;

final List<WorkersKvMessages2> messages;

/// Whether the API call was successful.
final bool success;

/// Arbitrary JSON that is associated with a key.
final WorkersKvAny? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
WorkersKvNamespaceReadTheMetadataForAKeyResponse copyWith({List<WorkersKvMessages2>? errors, List<WorkersKvMessages2>? messages, bool? success, WorkersKvAny Function()? result, }) { return WorkersKvNamespaceReadTheMetadataForAKeyResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceReadTheMetadataForAKeyResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'WorkersKvNamespaceReadTheMetadataForAKeyResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
