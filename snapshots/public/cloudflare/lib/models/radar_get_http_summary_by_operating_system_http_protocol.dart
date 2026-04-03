// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByOperatingSystemHttpProtocol {const RadarGetHttpSummaryByOperatingSystemHttpProtocol._(this.value);

factory RadarGetHttpSummaryByOperatingSystemHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpSummaryByOperatingSystemHttpProtocol._(json),
}; }

static const RadarGetHttpSummaryByOperatingSystemHttpProtocol http = RadarGetHttpSummaryByOperatingSystemHttpProtocol._('HTTP');

static const RadarGetHttpSummaryByOperatingSystemHttpProtocol https = RadarGetHttpSummaryByOperatingSystemHttpProtocol._('HTTPS');

static const List<RadarGetHttpSummaryByOperatingSystemHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByOperatingSystemHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByOperatingSystemHttpProtocol($value)'; } 
 }
