// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_entities_locations_response_result_locations.dart';final class RadarGetEntitiesLocationsResponseResult {const RadarGetEntitiesLocationsResponseResult({required this.locations});

factory RadarGetEntitiesLocationsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesLocationsResponseResult(
  locations: (json['locations'] as List<dynamic>).map((e) => RadarGetEntitiesLocationsResponseResultLocations.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetEntitiesLocationsResponseResultLocations> locations;

Map<String, dynamic> toJson() { return {
  'locations': locations.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('locations'); } 
RadarGetEntitiesLocationsResponseResult copyWith({List<RadarGetEntitiesLocationsResponseResultLocations>? locations}) { return RadarGetEntitiesLocationsResponseResult(
  locations: locations ?? this.locations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesLocationsResponseResult &&
          listEquals(locations, other.locations); } 
@override int get hashCode { return Object.hashAll(locations).hashCode; } 
@override String toString() { return 'RadarGetEntitiesLocationsResponseResult(locations: $locations)'; } 
 }
