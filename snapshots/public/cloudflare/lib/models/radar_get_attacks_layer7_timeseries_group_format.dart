// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7TimeseriesGroupFormat {const RadarGetAttacksLayer7TimeseriesGroupFormat._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7TimeseriesGroupFormat._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupFormat $json = RadarGetAttacksLayer7TimeseriesGroupFormat._('JSON');

static const RadarGetAttacksLayer7TimeseriesGroupFormat csv = RadarGetAttacksLayer7TimeseriesGroupFormat._('CSV');

static const List<RadarGetAttacksLayer7TimeseriesGroupFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupFormat($value)'; } 
 }
