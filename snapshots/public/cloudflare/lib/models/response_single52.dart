// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_single52_result.dart';import 'vectorize_messages2.dart';@immutable final class ResponseSingle52 {const ResponseSingle52({required this.errors, required this.messages, required this.result, required this.success, });

factory ResponseSingle52.fromJson(Map<String, dynamic> json) { return ResponseSingle52(
  errors: (json['errors'] as List<dynamic>).map((e) => VectorizeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => VectorizeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,) : null,
  success: json['success'] as bool,
); }

final List<VectorizeMessages2> errors;

final List<VectorizeMessages2> messages;

final ResponseSingle52Result? result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  if (result != null) 'result': result?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseSingle52 copyWith({List<VectorizeMessages2>? errors, List<VectorizeMessages2>? messages, ResponseSingle52Result? Function()? result, bool? success, }) { return ResponseSingle52(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingle52 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseSingle52(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
