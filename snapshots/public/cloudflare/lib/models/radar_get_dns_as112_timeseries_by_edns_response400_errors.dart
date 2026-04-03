// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsAs112TimeseriesByEdnsResponse400Errors {const RadarGetDnsAs112TimeseriesByEdnsResponse400Errors({required this.message});

factory RadarGetDnsAs112TimeseriesByEdnsResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByEdnsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetDnsAs112TimeseriesByEdnsResponse400Errors copyWith({String? message}) { return RadarGetDnsAs112TimeseriesByEdnsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByEdnsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByEdnsResponse400Errors(message: $message)'; } 
 }
