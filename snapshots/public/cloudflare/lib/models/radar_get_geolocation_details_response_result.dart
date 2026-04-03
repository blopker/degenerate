// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_geolocation_details_response_result_geolocation.dart';@immutable final class RadarGetGeolocationDetailsResponseResult {const RadarGetGeolocationDetailsResponseResult({required this.geolocation});

factory RadarGetGeolocationDetailsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetGeolocationDetailsResponseResult(
  geolocation: RadarGetGeolocationDetailsResponseResultGeolocation.fromJson(json['geolocation'] as Map<String, dynamic>),
); }

final RadarGetGeolocationDetailsResponseResultGeolocation geolocation;

Map<String, dynamic> toJson() { return {
  'geolocation': geolocation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('geolocation'); } 
RadarGetGeolocationDetailsResponseResult copyWith({RadarGetGeolocationDetailsResponseResultGeolocation? geolocation}) { return RadarGetGeolocationDetailsResponseResult(
  geolocation: geolocation ?? this.geolocation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetGeolocationDetailsResponseResult &&
          geolocation == other.geolocation; } 
@override int get hashCode { return geolocation.hashCode; } 
@override String toString() { return 'RadarGetGeolocationDetailsResponseResult(geolocation: $geolocation)'; } 
 }
