// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'telemetry_keys_list_response500_errors.dart';import 'telemetry_keys_list_response500_messages.dart';final class TelemetryKeysListResponse500 {const TelemetryKeysListResponse500({required this.errors, required this.messages, required this.success, });

factory TelemetryKeysListResponse500.fromJson(Map<String, dynamic> json) { return TelemetryKeysListResponse500(
  errors: (json['errors'] as List<dynamic>).map((e) => TelemetryKeysListResponse500Errors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TelemetryKeysListResponse500Messages.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<TelemetryKeysListResponse500Errors> errors;

final List<TelemetryKeysListResponse500Messages> messages;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
TelemetryKeysListResponse500 copyWith({List<TelemetryKeysListResponse500Errors>? errors, List<TelemetryKeysListResponse500Messages>? messages, bool? success, }) { return TelemetryKeysListResponse500(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryKeysListResponse500 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'TelemetryKeysListResponse500(errors: $errors, messages: $messages, success: $success)'; } 
 }
