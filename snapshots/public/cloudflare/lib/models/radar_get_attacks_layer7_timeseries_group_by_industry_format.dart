// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat {const RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat $json = RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat._('JSON');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat csv = RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat._('CSV');

static const List<RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByIndustryFormat($value)'; } 
 }
