// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'healthchecks_messages2.dart';import 'response_common33_result.dart';final class ResponseCommon33 {const ResponseCommon33({required this.errors, required this.messages, required this.result, required this.success, });

factory ResponseCommon33.fromJson(Map<String, dynamic> json) { return ResponseCommon33(
  errors: (json['errors'] as List<dynamic>).map((e) => HealthchecksMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => HealthchecksMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,),
  success: json['success'] as bool,
); }

final List<HealthchecksMessages2> errors;

final List<HealthchecksMessages2> messages;

final ResponseCommon33Result result;

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
ResponseCommon33 copyWith({List<HealthchecksMessages2>? errors, List<HealthchecksMessages2>? messages, ResponseCommon33Result? result, bool? success, }) { return ResponseCommon33(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommon33 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseCommon33(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
