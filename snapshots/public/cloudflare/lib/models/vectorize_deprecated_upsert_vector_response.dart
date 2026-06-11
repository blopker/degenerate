// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_index_upsert_response.dart';import 'vectorize_messages2.dart';@immutable final class VectorizeDeprecatedUpsertVectorResponse {const VectorizeDeprecatedUpsertVectorResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory VectorizeDeprecatedUpsertVectorResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedUpsertVectorResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => VectorizeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => VectorizeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: VectorizeIndexUpsertResponse.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<VectorizeMessages2> errors;

final List<VectorizeMessages2> messages;

final VectorizeIndexUpsertResponse result;

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
VectorizeDeprecatedUpsertVectorResponse copyWith({List<VectorizeMessages2>? errors, List<VectorizeMessages2>? messages, VectorizeIndexUpsertResponse? result, bool? success, }) { return VectorizeDeprecatedUpsertVectorResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedUpsertVectorResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'VectorizeDeprecatedUpsertVectorResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
