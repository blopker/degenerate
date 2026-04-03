// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudforce_one_whois_messages2.dart';@immutable final class ResponseCommonFailure20 {const ResponseCommonFailure20({required this.errors, required this.messages, required this.result, required this.success, });

factory ResponseCommonFailure20.fromJson(Map<String, dynamic> json) { return ResponseCommonFailure20(
  errors: (json['errors'] as List<dynamic>).map((e) => CloudforceOneWhoisMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CloudforceOneWhoisMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
); }

final List<CloudforceOneWhoisMessages2> errors;

final List<CloudforceOneWhoisMessages2> messages;

final Map<String,dynamic>? result;

/// Returns a boolean for the success/failure of the API call.
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
ResponseCommonFailure20 copyWith({List<CloudforceOneWhoisMessages2>? errors, List<CloudforceOneWhoisMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return ResponseCommonFailure20(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommonFailure20 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseCommonFailure20(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
