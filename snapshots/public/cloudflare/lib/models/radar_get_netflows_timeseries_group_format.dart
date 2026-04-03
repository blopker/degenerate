// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetNetflowsTimeseriesGroupFormat {const RadarGetNetflowsTimeseriesGroupFormat._(this.value);

factory RadarGetNetflowsTimeseriesGroupFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetNetflowsTimeseriesGroupFormat._(json),
}; }

static const RadarGetNetflowsTimeseriesGroupFormat $json = RadarGetNetflowsTimeseriesGroupFormat._('JSON');

static const RadarGetNetflowsTimeseriesGroupFormat csv = RadarGetNetflowsTimeseriesGroupFormat._('CSV');

static const List<RadarGetNetflowsTimeseriesGroupFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetNetflowsTimeseriesGroupFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetNetflowsTimeseriesGroupFormat($value)'; } 
 }
