// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TelemetryValuesListResponse500Messages {const TelemetryValuesListResponse500Messages({required this.message});

factory TelemetryValuesListResponse500Messages.fromJson(Map<String, dynamic> json) { return TelemetryValuesListResponse500Messages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
TelemetryValuesListResponse500Messages copyWith({String? message}) { return TelemetryValuesListResponse500Messages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryValuesListResponse500Messages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'TelemetryValuesListResponse500Messages(message: $message)'; } 
 }
