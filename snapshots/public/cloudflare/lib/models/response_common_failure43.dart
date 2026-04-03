// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_messages2.dart';@immutable final class ResponseCommonFailure43 {const ResponseCommonFailure43({required this.errors, required this.messages, required this.result, required this.success, });

factory ResponseCommonFailure43.fromJson(Map<String, dynamic> json) { return ResponseCommonFailure43(
  errors: (json['errors'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LoadBalancingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
); }

final List<LoadBalancingMessages2> errors;

final List<LoadBalancingMessages2> messages;

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
ResponseCommonFailure43 copyWith({List<LoadBalancingMessages2>? errors, List<LoadBalancingMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return ResponseCommonFailure43(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommonFailure43 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseCommonFailure43(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
