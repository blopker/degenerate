// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetGeolocationsResponse400Errors {const RadarGetGeolocationsResponse400Errors({required this.message});

factory RadarGetGeolocationsResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetGeolocationsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetGeolocationsResponse400Errors copyWith({String? message}) { return RadarGetGeolocationsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetGeolocationsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetGeolocationsResponse400Errors(message: $message)'; } 
 }
