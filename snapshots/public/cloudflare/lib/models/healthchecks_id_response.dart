// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'healthchecks_id_response_result.dart';import 'healthchecks_messages2.dart';@immutable final class HealthchecksIdResponse {const HealthchecksIdResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory HealthchecksIdResponse.fromJson(Map<String, dynamic> json) { return HealthchecksIdResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => HealthchecksMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => HealthchecksMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: HealthchecksIdResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<HealthchecksMessages2> errors;

final List<HealthchecksMessages2> messages;

final HealthchecksIdResponseResult result;

/// Whether the API call was successful.
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
HealthchecksIdResponse copyWith({List<HealthchecksMessages2>? errors, List<HealthchecksMessages2>? messages, HealthchecksIdResponseResult? result, bool? success, }) { return HealthchecksIdResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HealthchecksIdResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'HealthchecksIdResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
