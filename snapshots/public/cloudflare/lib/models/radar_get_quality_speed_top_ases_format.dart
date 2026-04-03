// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetQualitySpeedTopAsesFormat {const RadarGetQualitySpeedTopAsesFormat._(this.value);

factory RadarGetQualitySpeedTopAsesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetQualitySpeedTopAsesFormat._(json),
}; }

static const RadarGetQualitySpeedTopAsesFormat $json = RadarGetQualitySpeedTopAsesFormat._('JSON');

static const RadarGetQualitySpeedTopAsesFormat csv = RadarGetQualitySpeedTopAsesFormat._('CSV');

static const List<RadarGetQualitySpeedTopAsesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualitySpeedTopAsesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualitySpeedTopAsesFormat($value)'; } 
 }
