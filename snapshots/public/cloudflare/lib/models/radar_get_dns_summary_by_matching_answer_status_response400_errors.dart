// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsSummaryByMatchingAnswerStatusResponse400Errors {const RadarGetDnsSummaryByMatchingAnswerStatusResponse400Errors({required this.message});

factory RadarGetDnsSummaryByMatchingAnswerStatusResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByMatchingAnswerStatusResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetDnsSummaryByMatchingAnswerStatusResponse400Errors copyWith({String? message}) { return RadarGetDnsSummaryByMatchingAnswerStatusResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByMatchingAnswerStatusResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByMatchingAnswerStatusResponse400Errors(message: $message)'; } 
 }
