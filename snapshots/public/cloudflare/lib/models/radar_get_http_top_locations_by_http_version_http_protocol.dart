// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByHttpVersionHttpProtocol {const RadarGetHttpTopLocationsByHttpVersionHttpProtocol._(this.value);

factory RadarGetHttpTopLocationsByHttpVersionHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTopLocationsByHttpVersionHttpProtocol._(json),
}; }

static const RadarGetHttpTopLocationsByHttpVersionHttpProtocol http = RadarGetHttpTopLocationsByHttpVersionHttpProtocol._('HTTP');

static const RadarGetHttpTopLocationsByHttpVersionHttpProtocol https = RadarGetHttpTopLocationsByHttpVersionHttpProtocol._('HTTPS');

static const List<RadarGetHttpTopLocationsByHttpVersionHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpVersionHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionHttpProtocol($value)'; } 
 }
