// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages22.dart';@immutable final class ResponseCommonFailure18 {const ResponseCommonFailure18({required this.errors, required this.messages, required this.success, });

factory ResponseCommonFailure18.fromJson(Map<String, dynamic> json) { return ResponseCommonFailure18(
  errors: json['errors'] as Map<String, dynamic>,
  messages: (json['messages'] as List<dynamic>).map((e) => Messages22.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final Map<String,dynamic> errors;

final List<Messages22> messages;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors,
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCommonFailure18 copyWith({Map<String,dynamic>? errors, List<Messages22>? messages, bool? success, }) { return ResponseCommonFailure18(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommonFailure18 &&
          errors == other.errors &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(errors, Object.hashAll(messages), success); } 
@override String toString() { return 'ResponseCommonFailure18(errors: $errors, messages: $messages, success: $success)'; } 
 }
