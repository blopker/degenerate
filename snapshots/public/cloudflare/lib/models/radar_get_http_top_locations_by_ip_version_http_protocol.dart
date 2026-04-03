// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByIpVersionHttpProtocol {const RadarGetHttpTopLocationsByIpVersionHttpProtocol._(this.value);

factory RadarGetHttpTopLocationsByIpVersionHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTopLocationsByIpVersionHttpProtocol._(json),
}; }

static const RadarGetHttpTopLocationsByIpVersionHttpProtocol http = RadarGetHttpTopLocationsByIpVersionHttpProtocol._('HTTP');

static const RadarGetHttpTopLocationsByIpVersionHttpProtocol https = RadarGetHttpTopLocationsByIpVersionHttpProtocol._('HTTPS');

static const List<RadarGetHttpTopLocationsByIpVersionHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByIpVersionHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByIpVersionHttpProtocol($value)'; } 
 }
