// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer3SummaryByVerticalFormat {const RadarGetAttacksLayer3SummaryByVerticalFormat._(this.value);

factory RadarGetAttacksLayer3SummaryByVerticalFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer3SummaryByVerticalFormat._(json),
}; }

static const RadarGetAttacksLayer3SummaryByVerticalFormat $json = RadarGetAttacksLayer3SummaryByVerticalFormat._('JSON');

static const RadarGetAttacksLayer3SummaryByVerticalFormat csv = RadarGetAttacksLayer3SummaryByVerticalFormat._('CSV');

static const List<RadarGetAttacksLayer3SummaryByVerticalFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3SummaryByVerticalFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByVerticalFormat($value)'; } 
 }
