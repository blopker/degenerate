// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetOriginsSummaryResponse400Errors {const RadarGetOriginsSummaryResponse400Errors({required this.message});

factory RadarGetOriginsSummaryResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetOriginsSummaryResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetOriginsSummaryResponse400Errors copyWith({String? message}) { return RadarGetOriginsSummaryResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginsSummaryResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetOriginsSummaryResponse400Errors(message: $message)'; } 
 }
