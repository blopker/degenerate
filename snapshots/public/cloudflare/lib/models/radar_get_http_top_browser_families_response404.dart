// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopBrowserFamiliesResponse404 {const RadarGetHttpTopBrowserFamiliesResponse404({required this.error});

factory RadarGetHttpTopBrowserFamiliesResponse404.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopBrowserFamiliesResponse404(
  error: json['error'] as String,
); }

final String error;

Map<String, dynamic> toJson() { return {
  'error': error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String; } 
RadarGetHttpTopBrowserFamiliesResponse404 copyWith({String? error}) { return RadarGetHttpTopBrowserFamiliesResponse404(
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopBrowserFamiliesResponse404 &&
          error == other.error; } 
@override int get hashCode { return error.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowserFamiliesResponse404(error: $error)'; } 
 }
