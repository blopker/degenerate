// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_index_info_response.dart';import 'vectorize_messages2.dart';@immutable final class VectorizeIndexInfoResponse2 {const VectorizeIndexInfoResponse2({required this.errors, required this.messages, required this.result, required this.success, });

factory VectorizeIndexInfoResponse2.fromJson(Map<String, dynamic> json) { return VectorizeIndexInfoResponse2(
  errors: (json['errors'] as List<dynamic>).map((e) => VectorizeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => VectorizeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: VectorizeIndexInfoResponse.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<VectorizeMessages2> errors;

final List<VectorizeMessages2> messages;

final VectorizeIndexInfoResponse result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
VectorizeIndexInfoResponse2 copyWith({List<VectorizeMessages2>? errors, List<VectorizeMessages2>? messages, VectorizeIndexInfoResponse? result, bool? success, }) { return VectorizeIndexInfoResponse2(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexInfoResponse2 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'VectorizeIndexInfoResponse2(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
