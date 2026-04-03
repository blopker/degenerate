// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTimeseriesGroupByOperatingSystemFormat {const RadarGetHttpTimeseriesGroupByOperatingSystemFormat._(this.value);

factory RadarGetHttpTimeseriesGroupByOperatingSystemFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTimeseriesGroupByOperatingSystemFormat._(json),
}; }

static const RadarGetHttpTimeseriesGroupByOperatingSystemFormat $json = RadarGetHttpTimeseriesGroupByOperatingSystemFormat._('JSON');

static const RadarGetHttpTimeseriesGroupByOperatingSystemFormat csv = RadarGetHttpTimeseriesGroupByOperatingSystemFormat._('CSV');

static const List<RadarGetHttpTimeseriesGroupByOperatingSystemFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByOperatingSystemFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByOperatingSystemFormat($value)'; } 
 }
