// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol {const RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol._(this.value);

factory RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol._(json),
}; }

static const RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol http = RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol._('HTTP');

static const RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol https = RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol._('HTTPS');

static const List<RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBrowserFamiliesHttpProtocol($value)'; } 
 }
