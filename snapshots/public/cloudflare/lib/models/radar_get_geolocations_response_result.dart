// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_geolocations_response_result_geolocations.dart';@immutable final class RadarGetGeolocationsResponseResult {const RadarGetGeolocationsResponseResult({required this.geolocations});

factory RadarGetGeolocationsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetGeolocationsResponseResult(
  geolocations: (json['geolocations'] as List<dynamic>).map((e) => RadarGetGeolocationsResponseResultGeolocations.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetGeolocationsResponseResultGeolocations> geolocations;

Map<String, dynamic> toJson() { return {
  'geolocations': geolocations.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('geolocations'); } 
RadarGetGeolocationsResponseResult copyWith({List<RadarGetGeolocationsResponseResultGeolocations>? geolocations}) { return RadarGetGeolocationsResponseResult(
  geolocations: geolocations ?? this.geolocations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetGeolocationsResponseResult &&
          listEquals(geolocations, other.geolocations); } 
@override int get hashCode { return Object.hashAll(geolocations).hashCode; } 
@override String toString() { return 'RadarGetGeolocationsResponseResult(geolocations: $geolocations)'; } 
 }
