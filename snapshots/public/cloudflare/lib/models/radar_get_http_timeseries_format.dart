// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTimeseriesFormat {const RadarGetHttpTimeseriesFormat._(this.value);

factory RadarGetHttpTimeseriesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTimeseriesFormat._(json),
}; }

static const RadarGetHttpTimeseriesFormat $json = RadarGetHttpTimeseriesFormat._('JSON');

static const RadarGetHttpTimeseriesFormat csv = RadarGetHttpTimeseriesFormat._('CSV');

static const List<RadarGetHttpTimeseriesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesFormat($value)'; } 
 }
