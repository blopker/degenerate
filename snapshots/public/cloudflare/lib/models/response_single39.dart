// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_errors3.dart';import 'response_messages2.dart';import 'response_success.dart';@immutable final class ResponseSingle39 {const ResponseSingle39({required this.errors, required this.messages, required this.success, });

factory ResponseSingle39.fromJson(Map<String, dynamic> json) { return ResponseSingle39(
  errors: (json['errors'] as List<dynamic>).map((e) => ResponseErrors3.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ResponseMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: ResponseSuccess.fromJson(json['success'] as bool),
); }

/// Contains errors if the API call was unsuccessful.
final List<ResponseErrors3> errors;

/// Contains informational messages.
final List<ResponseMessages2> messages;

final ResponseSuccess success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success'); } 
ResponseSingle39 copyWith({List<ResponseErrors3>? errors, List<ResponseMessages2>? messages, ResponseSuccess? success, }) { return ResponseSingle39(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingle39 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'ResponseSingle39(errors: $errors, messages: $messages, success: $success)'; } 
 }
