// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByOperatingSystemHttpProtocol {const RadarGetHttpTopLocationsByOperatingSystemHttpProtocol._(this.value);

factory RadarGetHttpTopLocationsByOperatingSystemHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTopLocationsByOperatingSystemHttpProtocol._(json),
}; }

static const RadarGetHttpTopLocationsByOperatingSystemHttpProtocol http = RadarGetHttpTopLocationsByOperatingSystemHttpProtocol._('HTTP');

static const RadarGetHttpTopLocationsByOperatingSystemHttpProtocol https = RadarGetHttpTopLocationsByOperatingSystemHttpProtocol._('HTTPS');

static const List<RadarGetHttpTopLocationsByOperatingSystemHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByOperatingSystemHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByOperatingSystemHttpProtocol($value)'; } 
 }
