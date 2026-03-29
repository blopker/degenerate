// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logcontrol_messages2.dart';final class ResponseCommon43 {const ResponseCommon43({required this.errors, required this.messages, required this.success, });

factory ResponseCommon43.fromJson(Map<String, dynamic> json) { return ResponseCommon43(
  errors: (json['errors'] as List<dynamic>).map((e) => LogcontrolMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LogcontrolMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<LogcontrolMessages2> errors;

final List<LogcontrolMessages2> messages;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCommon43 copyWith({List<LogcontrolMessages2>? errors, List<LogcontrolMessages2>? messages, bool? success, }) { return ResponseCommon43(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommon43 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'ResponseCommon43(errors: $errors, messages: $messages, success: $success)'; } 
 }
