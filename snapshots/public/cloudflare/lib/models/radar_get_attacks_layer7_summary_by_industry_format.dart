// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7SummaryByIndustryFormat {const RadarGetAttacksLayer7SummaryByIndustryFormat._(this.value);

factory RadarGetAttacksLayer7SummaryByIndustryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7SummaryByIndustryFormat._(json),
}; }

static const RadarGetAttacksLayer7SummaryByIndustryFormat $json = RadarGetAttacksLayer7SummaryByIndustryFormat._('JSON');

static const RadarGetAttacksLayer7SummaryByIndustryFormat csv = RadarGetAttacksLayer7SummaryByIndustryFormat._('CSV');

static const List<RadarGetAttacksLayer7SummaryByIndustryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7SummaryByIndustryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByIndustryFormat($value)'; } 
 }
