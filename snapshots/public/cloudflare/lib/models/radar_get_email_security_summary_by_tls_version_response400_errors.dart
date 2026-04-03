// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryByTlsVersionResponse400Errors {const RadarGetEmailSecuritySummaryByTlsVersionResponse400Errors({required this.message});

factory RadarGetEmailSecuritySummaryByTlsVersionResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryByTlsVersionResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetEmailSecuritySummaryByTlsVersionResponse400Errors copyWith({String? message}) { return RadarGetEmailSecuritySummaryByTlsVersionResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryByTlsVersionResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByTlsVersionResponse400Errors(message: $message)'; } 
 }
