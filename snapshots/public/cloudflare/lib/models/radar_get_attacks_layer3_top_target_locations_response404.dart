// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TopTargetLocationsResponse404 {const RadarGetAttacksLayer3TopTargetLocationsResponse404({required this.error});

factory RadarGetAttacksLayer3TopTargetLocationsResponse404.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TopTargetLocationsResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetAttacksLayer3TopTargetLocationsResponse404 copyWith({String? error}) { return RadarGetAttacksLayer3TopTargetLocationsResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TopTargetLocationsResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopTargetLocationsResponse404(error: $error)'; } 
 }
