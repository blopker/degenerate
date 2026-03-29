// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_geolocation_details_response_result_geolocation_parent.dart';/// The type of the geolocation.
final class RadarGetGeolocationDetailsResponseResultGeolocationType {const RadarGetGeolocationDetailsResponseResultGeolocationType._(this.value);

factory RadarGetGeolocationDetailsResponseResultGeolocationType.fromJson(String json) { return switch (json) {
  'CONTINENT' => continent,
  'COUNTRY' => country,
  'ADM1' => adm1,
  _ => RadarGetGeolocationDetailsResponseResultGeolocationType._(json),
}; }

static const RadarGetGeolocationDetailsResponseResultGeolocationType continent = RadarGetGeolocationDetailsResponseResultGeolocationType._('CONTINENT');

static const RadarGetGeolocationDetailsResponseResultGeolocationType country = RadarGetGeolocationDetailsResponseResultGeolocationType._('COUNTRY');

static const RadarGetGeolocationDetailsResponseResultGeolocationType adm1 = RadarGetGeolocationDetailsResponseResultGeolocationType._('ADM1');

static const List<RadarGetGeolocationDetailsResponseResultGeolocationType> values = [continent, country, adm1];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetGeolocationDetailsResponseResultGeolocationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetGeolocationDetailsResponseResultGeolocationType($value)'; } 
 }
final class RadarGetGeolocationDetailsResponseResultGeolocation {const RadarGetGeolocationDetailsResponseResultGeolocation({this.code, required this.geoId, required this.latitude, required this.longitude, required this.name, required this.parent, required this.type, });

factory RadarGetGeolocationDetailsResponseResultGeolocation.fromJson(Map<String, dynamic> json) { return RadarGetGeolocationDetailsResponseResultGeolocation(
  code: json['code'] as String?,
  geoId: json['geoId'] as String,
  latitude: json['latitude'] as String,
  longitude: json['longitude'] as String,
  name: json['name'] as String,
  parent: RadarGetGeolocationDetailsResponseResultGeolocationParent.fromJson(json['parent'] as Map<String, dynamic>),
  type: RadarGetGeolocationDetailsResponseResultGeolocationType.fromJson(json['type'] as String),
); }

final String? code;

final String geoId;

/// A numeric string.
final String latitude;

/// A numeric string.
final String longitude;

final String name;

final RadarGetGeolocationDetailsResponseResultGeolocationParent parent;

/// The type of the geolocation.
final RadarGetGeolocationDetailsResponseResultGeolocationType type;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'geoId': geoId,
  'latitude': latitude,
  'longitude': longitude,
  'name': name,
  'parent': parent.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('geoId') && json['geoId'] is String &&
      json.containsKey('latitude') && json['latitude'] is String &&
      json.containsKey('longitude') && json['longitude'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('parent') &&
      json.containsKey('type'); } 
RadarGetGeolocationDetailsResponseResultGeolocation copyWith({String Function()? code, String? geoId, String? latitude, String? longitude, String? name, RadarGetGeolocationDetailsResponseResultGeolocationParent? parent, RadarGetGeolocationDetailsResponseResultGeolocationType? type, }) { return RadarGetGeolocationDetailsResponseResultGeolocation(
  code: code != null ? code() : this.code,
  geoId: geoId ?? this.geoId,
  latitude: latitude ?? this.latitude,
  longitude: longitude ?? this.longitude,
  name: name ?? this.name,
  parent: parent ?? this.parent,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetGeolocationDetailsResponseResultGeolocation &&
          code == other.code &&
          geoId == other.geoId &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          name == other.name &&
          parent == other.parent &&
          type == other.type; } 
@override int get hashCode { return Object.hash(code, geoId, latitude, longitude, name, parent, type); } 
@override String toString() { return 'RadarGetGeolocationDetailsResponseResultGeolocation(code: $code, geoId: $geoId, latitude: $latitude, longitude: $longitude, name: $name, parent: $parent, type: $type)'; } 
 }
