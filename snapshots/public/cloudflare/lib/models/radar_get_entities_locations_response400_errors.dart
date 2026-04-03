// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEntitiesLocationsResponse400Errors {const RadarGetEntitiesLocationsResponse400Errors({required this.message});

factory RadarGetEntitiesLocationsResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesLocationsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetEntitiesLocationsResponse400Errors copyWith({String? message}) { return RadarGetEntitiesLocationsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesLocationsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetEntitiesLocationsResponse400Errors(message: $message)'; } 
 }
