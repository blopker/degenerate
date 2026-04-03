// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetOriginsTimeseriesFormat {const RadarGetOriginsTimeseriesFormat._(this.value);

factory RadarGetOriginsTimeseriesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetOriginsTimeseriesFormat._(json),
}; }

static const RadarGetOriginsTimeseriesFormat $json = RadarGetOriginsTimeseriesFormat._('JSON');

static const RadarGetOriginsTimeseriesFormat csv = RadarGetOriginsTimeseriesFormat._('CSV');

static const List<RadarGetOriginsTimeseriesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsTimeseriesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsTimeseriesFormat($value)'; } 
 }
