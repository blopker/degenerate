// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'speed_messages2.dart';final class ResponseCommon65 {const ResponseCommon65({required this.errors, required this.messages, required this.success, });

factory ResponseCommon65.fromJson(Map<String, dynamic> json) { return ResponseCommon65(
  errors: (json['errors'] as List<dynamic>).map((e) => SpeedMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SpeedMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<SpeedMessages2> errors;

final List<SpeedMessages2> messages;

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
ResponseCommon65 copyWith({List<SpeedMessages2>? errors, List<SpeedMessages2>? messages, bool? success, }) { return ResponseCommon65(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommon65 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'ResponseCommon65(errors: $errors, messages: $messages, success: $success)'; } 
 }
