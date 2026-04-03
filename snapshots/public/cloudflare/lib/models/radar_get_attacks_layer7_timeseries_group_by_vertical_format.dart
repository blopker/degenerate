// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat {const RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat $json = RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat._('JSON');

static const RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat csv = RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat._('CSV');

static const List<RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByVerticalFormat($value)'; } 
 }
