// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetOriginsTimeseriesGroupFormat {const RadarGetOriginsTimeseriesGroupFormat._(this.value);

factory RadarGetOriginsTimeseriesGroupFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetOriginsTimeseriesGroupFormat._(json),
}; }

static const RadarGetOriginsTimeseriesGroupFormat $json = RadarGetOriginsTimeseriesGroupFormat._('JSON');

static const RadarGetOriginsTimeseriesGroupFormat csv = RadarGetOriginsTimeseriesGroupFormat._('CSV');

static const List<RadarGetOriginsTimeseriesGroupFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsTimeseriesGroupFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsTimeseriesGroupFormat($value)'; } 
 }
