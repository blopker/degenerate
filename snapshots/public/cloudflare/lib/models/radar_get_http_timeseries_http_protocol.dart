// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesHttpProtocol {const RadarGetHttpTimeseriesHttpProtocol._(this.value);

factory RadarGetHttpTimeseriesHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTimeseriesHttpProtocol._(json),
}; }

static const RadarGetHttpTimeseriesHttpProtocol http = RadarGetHttpTimeseriesHttpProtocol._('HTTP');

static const RadarGetHttpTimeseriesHttpProtocol https = RadarGetHttpTimeseriesHttpProtocol._('HTTPS');

static const List<RadarGetHttpTimeseriesHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesHttpProtocol($value)'; } 
 }
