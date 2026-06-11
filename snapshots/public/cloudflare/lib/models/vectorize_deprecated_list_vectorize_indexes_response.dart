// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vectorize_create_index_response.dart';import 'vectorize_messages2.dart';@immutable final class VectorizeDeprecatedListVectorizeIndexesResponse {const VectorizeDeprecatedListVectorizeIndexesResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory VectorizeDeprecatedListVectorizeIndexesResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedListVectorizeIndexesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => VectorizeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => VectorizeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => VectorizeCreateIndexResponse.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<VectorizeMessages2> errors;

final List<VectorizeMessages2> messages;

final List<VectorizeCreateIndexResponse> result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
VectorizeDeprecatedListVectorizeIndexesResponse copyWith({List<VectorizeMessages2>? errors, List<VectorizeMessages2>? messages, List<VectorizeCreateIndexResponse>? result, bool? success, }) { return VectorizeDeprecatedListVectorizeIndexesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedListVectorizeIndexesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success); } 
@override String toString() { return 'VectorizeDeprecatedListVectorizeIndexesResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
