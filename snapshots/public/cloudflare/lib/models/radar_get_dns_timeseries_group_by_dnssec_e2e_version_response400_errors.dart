// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponse400Errors {const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponse400Errors({required this.message});

factory RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponse400Errors copyWith({String? message}) { return RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponse400Errors(message: $message)'; } 
 }
