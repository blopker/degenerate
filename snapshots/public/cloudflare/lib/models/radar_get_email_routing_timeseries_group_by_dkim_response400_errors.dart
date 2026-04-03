// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingTimeseriesGroupByDkimResponse400Errors {const RadarGetEmailRoutingTimeseriesGroupByDkimResponse400Errors({required this.message});

factory RadarGetEmailRoutingTimeseriesGroupByDkimResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByDkimResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetEmailRoutingTimeseriesGroupByDkimResponse400Errors copyWith({String? message}) { return RadarGetEmailRoutingTimeseriesGroupByDkimResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByDkimResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByDkimResponse400Errors(message: $message)'; } 
 }
