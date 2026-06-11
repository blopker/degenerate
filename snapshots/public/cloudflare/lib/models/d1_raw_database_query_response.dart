// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_messages2.dart';import 'd1_raw_result_response.dart';@immutable final class D1RawDatabaseQueryResponse {const D1RawDatabaseQueryResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory D1RawDatabaseQueryResponse.fromJson(Map<String, dynamic> json) { return D1RawDatabaseQueryResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => D1Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => D1Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => D1RawResultResponse.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<D1Messages2> errors;

final List<D1Messages2> messages;

final List<D1RawResultResponse> result;

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
D1RawDatabaseQueryResponse copyWith({List<D1Messages2>? errors, List<D1Messages2>? messages, List<D1RawResultResponse>? result, bool? success, }) { return D1RawDatabaseQueryResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1RawDatabaseQueryResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success); } 
@override String toString() { return 'D1RawDatabaseQueryResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
