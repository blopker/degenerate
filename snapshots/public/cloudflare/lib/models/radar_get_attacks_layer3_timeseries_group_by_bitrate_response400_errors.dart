// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TimeseriesGroupByBitrateResponse400Errors {const RadarGetAttacksLayer3TimeseriesGroupByBitrateResponse400Errors({required this.message});

factory RadarGetAttacksLayer3TimeseriesGroupByBitrateResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesGroupByBitrateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetAttacksLayer3TimeseriesGroupByBitrateResponse400Errors copyWith({String? message}) { return RadarGetAttacksLayer3TimeseriesGroupByBitrateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesGroupByBitrateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByBitrateResponse400Errors(message: $message)'; } 
 }
