// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetQualitySpeedTopLocationsResponse404 {const RadarGetQualitySpeedTopLocationsResponse404({required this.error});

factory RadarGetQualitySpeedTopLocationsResponse404.fromJson(Map<String, dynamic> json) { return RadarGetQualitySpeedTopLocationsResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetQualitySpeedTopLocationsResponse404 copyWith({String? error}) { return RadarGetQualitySpeedTopLocationsResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualitySpeedTopLocationsResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetQualitySpeedTopLocationsResponse404(error: $error)'; } 
 }
