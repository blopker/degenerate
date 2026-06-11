// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_export_database_response202_result.dart';import 'd1_messages2.dart';@immutable final class D1ExportDatabaseResponse202 {const D1ExportDatabaseResponse202({required this.errors, required this.messages, required this.result, required this.success, });

factory D1ExportDatabaseResponse202.fromJson(Map<String, dynamic> json) { return D1ExportDatabaseResponse202(
  errors: (json['errors'] as List<dynamic>).map((e) => D1Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => D1Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: D1ExportDatabaseResponse202Result.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<D1Messages2> errors;

final List<D1Messages2> messages;

final D1ExportDatabaseResponse202Result result;

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
D1ExportDatabaseResponse202 copyWith({List<D1Messages2>? errors, List<D1Messages2>? messages, D1ExportDatabaseResponse202Result? result, bool? success, }) { return D1ExportDatabaseResponse202(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1ExportDatabaseResponse202 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'D1ExportDatabaseResponse202(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
