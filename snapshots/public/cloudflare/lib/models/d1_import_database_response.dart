// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_import_database_response_result.dart';import 'd1_messages2.dart';@immutable final class D1ImportDatabaseResponse {const D1ImportDatabaseResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory D1ImportDatabaseResponse.fromJson(Map<String, dynamic> json) { return D1ImportDatabaseResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => D1Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => D1Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: D1ImportDatabaseResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<D1Messages2> errors;

final List<D1Messages2> messages;

final D1ImportDatabaseResponseResult result;

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
D1ImportDatabaseResponse copyWith({List<D1Messages2>? errors, List<D1Messages2>? messages, D1ImportDatabaseResponseResult? result, bool? success, }) { return D1ImportDatabaseResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1ImportDatabaseResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'D1ImportDatabaseResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
