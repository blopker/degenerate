// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_traffic_anomalies_response_result_traffic_anomalies_asn_details_locations.dart';@immutable final class RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails {const RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails({required this.asn, required this.name, this.locations, });

factory RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails.fromJson(Map<String, dynamic> json) { return RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails(
  asn: json['asn'] as String,
  locations: json['locations'] != null ? RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetailsLocations.fromJson(json['locations'] as Map<String, dynamic>) : null,
  name: json['name'] as String,
); }

final String asn;

final RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetailsLocations? locations;

final String name;

Map<String, dynamic> toJson() { return {
  'asn': asn,
  if (locations != null) 'locations': locations?.toJson(),
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn') && json['asn'] is String &&
      json.containsKey('name') && json['name'] is String; } 
RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails copyWith({String? asn, RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetailsLocations Function()? locations, String? name, }) { return RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails(
  asn: asn ?? this.asn,
  locations: locations != null ? locations() : this.locations,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails &&
          asn == other.asn &&
          locations == other.locations &&
          name == other.name; } 
@override int get hashCode { return Object.hash(asn, locations, name); } 
@override String toString() { return 'RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails(asn: $asn, locations: $locations, name: $name)'; } 
 }
