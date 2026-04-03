// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer3SummaryByIpVersionFormat {const RadarGetAttacksLayer3SummaryByIpVersionFormat._(this.value);

factory RadarGetAttacksLayer3SummaryByIpVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer3SummaryByIpVersionFormat._(json),
}; }

static const RadarGetAttacksLayer3SummaryByIpVersionFormat $json = RadarGetAttacksLayer3SummaryByIpVersionFormat._('JSON');

static const RadarGetAttacksLayer3SummaryByIpVersionFormat csv = RadarGetAttacksLayer3SummaryByIpVersionFormat._('CSV');

static const List<RadarGetAttacksLayer3SummaryByIpVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3SummaryByIpVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByIpVersionFormat($value)'; } 
 }
