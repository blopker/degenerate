// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat {const RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat $json = RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat._('JSON');

static const RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat csv = RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat._('CSV');

static const List<RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByHttpMethodFormat($value)'; } 
 }
