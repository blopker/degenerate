// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_bulk_get_result.dart';import 'workers_kv_bulk_get_result_with_metadata.dart';import 'workers_kv_messages2.dart';import 'workers_kv_namespace_get_multiple_key_value_pairs_response_result.dart';@immutable final class WorkersKvNamespaceGetMultipleKeyValuePairsResponse {const WorkersKvNamespaceGetMultipleKeyValuePairsResponse({required this.errors, required this.messages, required this.success, this.result, });

factory WorkersKvNamespaceGetMultipleKeyValuePairsResponse.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceGetMultipleKeyValuePairsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersKvMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersKvMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => WorkersKvBulkGetResult.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersKvBulkGetResultWithMetadata.fromJson(v as Map<String, dynamic>),) : null,
); }

final List<WorkersKvMessages2> errors;

final List<WorkersKvMessages2> messages;

/// Whether the API call was successful.
final bool success;

final WorkersKvNamespaceGetMultipleKeyValuePairsResponseResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
WorkersKvNamespaceGetMultipleKeyValuePairsResponse copyWith({List<WorkersKvMessages2>? errors, List<WorkersKvMessages2>? messages, bool? success, WorkersKvNamespaceGetMultipleKeyValuePairsResponseResult Function()? result, }) { return WorkersKvNamespaceGetMultipleKeyValuePairsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceGetMultipleKeyValuePairsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'WorkersKvNamespaceGetMultipleKeyValuePairsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
