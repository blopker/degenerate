// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// HTTP protocol (HTTP vs. HTTPS).
@immutable final class RadarGetHttpTopLocationsByHttpProtocolHttpProtocol {const RadarGetHttpTopLocationsByHttpProtocolHttpProtocol._(this.value);

factory RadarGetHttpTopLocationsByHttpProtocolHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTopLocationsByHttpProtocolHttpProtocol._(json),
}; }

static const RadarGetHttpTopLocationsByHttpProtocolHttpProtocol http = RadarGetHttpTopLocationsByHttpProtocolHttpProtocol._('HTTP');

static const RadarGetHttpTopLocationsByHttpProtocolHttpProtocol https = RadarGetHttpTopLocationsByHttpProtocolHttpProtocol._('HTTPS');

static const List<RadarGetHttpTopLocationsByHttpProtocolHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpProtocolHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpProtocolHttpProtocol($value)'; } 
 }
