// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Location of site in latitude and longitude.
@immutable final class MagicSiteLocation {const MagicSiteLocation({this.lat, this.lon, });

factory MagicSiteLocation.fromJson(Map<String, dynamic> json) { return MagicSiteLocation(
  lat: json['lat'] as String?,
  lon: json['lon'] as String?,
); }

/// Latitude
final String? lat;

/// Longitude
final String? lon;

Map<String, dynamic> toJson() { return {
  'lat': ?lat,
  'lon': ?lon,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'lat', 'lon'}.contains(key)); } 
MagicSiteLocation copyWith({String Function()? lat, String Function()? lon, }) { return MagicSiteLocation(
  lat: lat != null ? lat() : this.lat,
  lon: lon != null ? lon() : this.lon,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSiteLocation &&
          lat == other.lat &&
          lon == other.lon; } 
@override int get hashCode { return Object.hash(lat, lon); } 
@override String toString() { return 'MagicSiteLocation(lat: $lat, lon: $lon)'; } 
 }
