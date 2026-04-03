// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TelemetryKeysListResponse500Messages {const TelemetryKeysListResponse500Messages({required this.message});

factory TelemetryKeysListResponse500Messages.fromJson(Map<String, dynamic> json) { return TelemetryKeysListResponse500Messages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
TelemetryKeysListResponse500Messages copyWith({String? message}) { return TelemetryKeysListResponse500Messages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryKeysListResponse500Messages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'TelemetryKeysListResponse500Messages(message: $message)'; } 
 }
