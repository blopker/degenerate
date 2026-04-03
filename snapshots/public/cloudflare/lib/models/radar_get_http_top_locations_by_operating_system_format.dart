// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTopLocationsByOperatingSystemFormat {const RadarGetHttpTopLocationsByOperatingSystemFormat._(this.value);

factory RadarGetHttpTopLocationsByOperatingSystemFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopLocationsByOperatingSystemFormat._(json),
}; }

static const RadarGetHttpTopLocationsByOperatingSystemFormat $json = RadarGetHttpTopLocationsByOperatingSystemFormat._('JSON');

static const RadarGetHttpTopLocationsByOperatingSystemFormat csv = RadarGetHttpTopLocationsByOperatingSystemFormat._('CSV');

static const List<RadarGetHttpTopLocationsByOperatingSystemFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByOperatingSystemFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByOperatingSystemFormat($value)'; } 
 }
