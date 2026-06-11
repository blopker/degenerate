// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudforce_one_requests_messages2.dart';import 'response_common_failure19_errors.dart';@immutable final class ResponseCommonFailure19 {const ResponseCommonFailure19({required this.errors, required this.messages, required this.success, });

factory ResponseCommonFailure19.fromJson(Map<String, dynamic> json) { return ResponseCommonFailure19(
  errors: ResponseCommonFailure19Errors.fromJson(json['errors'] as Map<String, dynamic>),
  messages: (json['messages'] as List<dynamic>).map((e) => CloudforceOneRequestsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final ResponseCommonFailure19Errors errors;

final List<CloudforceOneRequestsMessages2> messages;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.toJson(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCommonFailure19 copyWith({ResponseCommonFailure19Errors? errors, List<CloudforceOneRequestsMessages2>? messages, bool? success, }) { return ResponseCommonFailure19(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommonFailure19 &&
          errors == other.errors &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(errors, Object.hashAll(messages), success); } 
@override String toString() { return 'ResponseCommonFailure19(errors: $errors, messages: $messages, success: $success)'; } 
 }
