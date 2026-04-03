// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetQualitySpeedSummaryFormat {const RadarGetQualitySpeedSummaryFormat._(this.value);

factory RadarGetQualitySpeedSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetQualitySpeedSummaryFormat._(json),
}; }

static const RadarGetQualitySpeedSummaryFormat $json = RadarGetQualitySpeedSummaryFormat._('JSON');

static const RadarGetQualitySpeedSummaryFormat csv = RadarGetQualitySpeedSummaryFormat._('CSV');

static const List<RadarGetQualitySpeedSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualitySpeedSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualitySpeedSummaryFormat($value)'; } 
 }
