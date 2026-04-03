// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7SummaryByMitigationProductResponse400Errors {const RadarGetAttacksLayer7SummaryByMitigationProductResponse400Errors({required this.message});

factory RadarGetAttacksLayer7SummaryByMitigationProductResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7SummaryByMitigationProductResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetAttacksLayer7SummaryByMitigationProductResponse400Errors copyWith({String? message}) { return RadarGetAttacksLayer7SummaryByMitigationProductResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7SummaryByMitigationProductResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByMitigationProductResponse400Errors(message: $message)'; } 
 }
