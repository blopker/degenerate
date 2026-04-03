// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TelemetryKeysListResponseErrors {const TelemetryKeysListResponseErrors({required this.message});

factory TelemetryKeysListResponseErrors.fromJson(Map<String, dynamic> json) { return TelemetryKeysListResponseErrors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
TelemetryKeysListResponseErrors copyWith({String? message}) { return TelemetryKeysListResponseErrors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryKeysListResponseErrors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'TelemetryKeysListResponseErrors(message: $message)'; } 
 }
