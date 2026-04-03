// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7TimeseriesFormat {const RadarGetAttacksLayer7TimeseriesFormat._(this.value);

factory RadarGetAttacksLayer7TimeseriesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7TimeseriesFormat._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesFormat $json = RadarGetAttacksLayer7TimeseriesFormat._('JSON');

static const RadarGetAttacksLayer7TimeseriesFormat csv = RadarGetAttacksLayer7TimeseriesFormat._('CSV');

static const List<RadarGetAttacksLayer7TimeseriesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesFormat($value)'; } 
 }
