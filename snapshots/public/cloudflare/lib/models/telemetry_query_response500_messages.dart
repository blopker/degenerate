// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TelemetryQueryResponse500Messages {const TelemetryQueryResponse500Messages({required this.message});

factory TelemetryQueryResponse500Messages.fromJson(Map<String, dynamic> json) { return TelemetryQueryResponse500Messages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
TelemetryQueryResponse500Messages copyWith({String? message}) { return TelemetryQueryResponse500Messages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryQueryResponse500Messages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'TelemetryQueryResponse500Messages(message: $message)'; } 
 }
