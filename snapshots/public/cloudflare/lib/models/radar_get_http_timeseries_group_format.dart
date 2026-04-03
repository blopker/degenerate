// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTimeseriesGroupFormat {const RadarGetHttpTimeseriesGroupFormat._(this.value);

factory RadarGetHttpTimeseriesGroupFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTimeseriesGroupFormat._(json),
}; }

static const RadarGetHttpTimeseriesGroupFormat $json = RadarGetHttpTimeseriesGroupFormat._('JSON');

static const RadarGetHttpTimeseriesGroupFormat csv = RadarGetHttpTimeseriesGroupFormat._('CSV');

static const List<RadarGetHttpTimeseriesGroupFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupFormat($value)'; } 
 }
