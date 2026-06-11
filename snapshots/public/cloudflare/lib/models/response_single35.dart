// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_messages2.dart';import 'response_single35_result.dart';@immutable final class ResponseSingle35 {const ResponseSingle35({required this.errors, required this.messages, required this.result, required this.success, });

factory ResponseSingle35.fromJson(Map<String, dynamic> json) { return ResponseSingle35(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,),
  success: json['success'] as bool,
); }

final List<MagicMessages2> errors;

final List<MagicMessages2> messages;

final ResponseSingle35Result result;

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
ResponseSingle35 copyWith({List<MagicMessages2>? errors, List<MagicMessages2>? messages, ResponseSingle35Result? result, bool? success, }) { return ResponseSingle35(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingle35 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseSingle35(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
