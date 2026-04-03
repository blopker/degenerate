// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetQualitySpeedHistogramFormat {const RadarGetQualitySpeedHistogramFormat._(this.value);

factory RadarGetQualitySpeedHistogramFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetQualitySpeedHistogramFormat._(json),
}; }

static const RadarGetQualitySpeedHistogramFormat $json = RadarGetQualitySpeedHistogramFormat._('JSON');

static const RadarGetQualitySpeedHistogramFormat csv = RadarGetQualitySpeedHistogramFormat._('CSV');

static const List<RadarGetQualitySpeedHistogramFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualitySpeedHistogramFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualitySpeedHistogramFormat($value)'; } 
 }
