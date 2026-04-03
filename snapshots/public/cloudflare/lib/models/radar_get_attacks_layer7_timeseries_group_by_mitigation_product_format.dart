// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat {const RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat $json = RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat._('JSON');

static const RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat csv = RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat._('CSV');

static const List<RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByMitigationProductFormat($value)'; } 
 }
