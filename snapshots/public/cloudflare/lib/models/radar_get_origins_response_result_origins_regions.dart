// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetOriginsResponseResultOriginsRegions {const RadarGetOriginsResponseResultOriginsRegions({required this.region});

factory RadarGetOriginsResponseResultOriginsRegions.fromJson(Map<String, dynamic> json) { return RadarGetOriginsResponseResultOriginsRegions(
  region: json['region'] as String,
); }

/// The region code.
final String region;

Map<String, dynamic> toJson() { return {
  'region': region,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('region') && json['region'] is String; } 
RadarGetOriginsResponseResultOriginsRegions copyWith({String? region}) { return RadarGetOriginsResponseResultOriginsRegions(
  region: region ?? this.region,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginsResponseResultOriginsRegions &&
          region == other.region; } 
@override int get hashCode { return region.hashCode; } 
@override String toString() { return 'RadarGetOriginsResponseResultOriginsRegions(region: $region)'; } 
 }
