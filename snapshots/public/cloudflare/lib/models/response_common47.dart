// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_pcaps_messages2.dart';import 'response_common47_result.dart';@immutable final class ResponseCommon47 {const ResponseCommon47({required this.errors, required this.messages, required this.result, required this.success, });

factory ResponseCommon47.fromJson(Map<String, dynamic> json) { return ResponseCommon47(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicVisibilityPcapsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicVisibilityPcapsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,),
  success: json['success'] as bool,
); }

final List<MagicVisibilityPcapsMessages2> errors;

final List<MagicVisibilityPcapsMessages2> messages;

final ResponseCommon47Result result;

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
ResponseCommon47 copyWith({List<MagicVisibilityPcapsMessages2>? errors, List<MagicVisibilityPcapsMessages2>? messages, ResponseCommon47Result? result, bool? success, }) { return ResponseCommon47(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommon47 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseCommon47(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
