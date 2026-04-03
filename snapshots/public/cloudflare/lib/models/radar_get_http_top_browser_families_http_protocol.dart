// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopBrowserFamiliesHttpProtocol {const RadarGetHttpTopBrowserFamiliesHttpProtocol._(this.value);

factory RadarGetHttpTopBrowserFamiliesHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTopBrowserFamiliesHttpProtocol._(json),
}; }

static const RadarGetHttpTopBrowserFamiliesHttpProtocol http = RadarGetHttpTopBrowserFamiliesHttpProtocol._('HTTP');

static const RadarGetHttpTopBrowserFamiliesHttpProtocol https = RadarGetHttpTopBrowserFamiliesHttpProtocol._('HTTPS');

static const List<RadarGetHttpTopBrowserFamiliesHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowserFamiliesHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowserFamiliesHttpProtocol($value)'; } 
 }
