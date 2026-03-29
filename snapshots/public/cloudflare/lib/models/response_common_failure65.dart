// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_messages2.dart';final class ResponseCommonFailure65 {const ResponseCommonFailure65({required this.errors, required this.messages, required this.result, required this.success, });

factory ResponseCommonFailure65.fromJson(Map<String, dynamic> json) { return ResponseCommonFailure65(
  errors: (json['errors'] as List<dynamic>).map((e) => SmartshieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SmartshieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<SmartshieldMessages2> errors;

final List<SmartshieldMessages2> messages;

final Map<String,dynamic>? result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCommonFailure65 copyWith({List<SmartshieldMessages2>? errors, List<SmartshieldMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return ResponseCommonFailure65(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommonFailure65 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseCommonFailure65(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
