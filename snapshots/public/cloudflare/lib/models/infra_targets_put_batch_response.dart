// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_messages2.dart';import 'infra_target.dart';@immutable final class InfraTargetsPutBatchResponse {const InfraTargetsPutBatchResponse({required this.errors, required this.messages, required this.success, this.result, });

factory InfraTargetsPutBatchResponse.fromJson(Map<String, dynamic> json) { return InfraTargetsPutBatchResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => InfraTarget.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<InfraMessages2> errors;

final List<InfraMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<InfraTarget>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
InfraTargetsPutBatchResponse copyWith({List<InfraMessages2>? errors, List<InfraMessages2>? messages, bool? success, List<InfraTarget> Function()? result, }) { return InfraTargetsPutBatchResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraTargetsPutBatchResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'InfraTargetsPutBatchResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
