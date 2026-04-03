// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat {const RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat $json = RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat._('JSON');

static const RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat csv = RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat._('CSV');

static const List<RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByBitrateFormat($value)'; } 
 }
