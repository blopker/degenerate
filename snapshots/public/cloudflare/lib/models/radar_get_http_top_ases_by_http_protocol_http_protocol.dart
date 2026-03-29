// GENERATED CODE - DO NOT MODIFY BY HAND

/// HTTP protocol (HTTP vs. HTTPS).
final class RadarGetHttpTopAsesByHttpProtocolHttpProtocol {const RadarGetHttpTopAsesByHttpProtocolHttpProtocol._(this.value);

factory RadarGetHttpTopAsesByHttpProtocolHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTopAsesByHttpProtocolHttpProtocol._(json),
}; }

static const RadarGetHttpTopAsesByHttpProtocolHttpProtocol http = RadarGetHttpTopAsesByHttpProtocolHttpProtocol._('HTTP');

static const RadarGetHttpTopAsesByHttpProtocolHttpProtocol https = RadarGetHttpTopAsesByHttpProtocolHttpProtocol._('HTTPS');

static const List<RadarGetHttpTopAsesByHttpProtocolHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByHttpProtocolHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByHttpProtocolHttpProtocol($value)'; } 
 }
