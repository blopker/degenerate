// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetQualitySpeedTopLocationsFormat {const RadarGetQualitySpeedTopLocationsFormat._(this.value);

factory RadarGetQualitySpeedTopLocationsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetQualitySpeedTopLocationsFormat._(json),
}; }

static const RadarGetQualitySpeedTopLocationsFormat $json = RadarGetQualitySpeedTopLocationsFormat._('JSON');

static const RadarGetQualitySpeedTopLocationsFormat csv = RadarGetQualitySpeedTopLocationsFormat._('CSV');

static const List<RadarGetQualitySpeedTopLocationsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualitySpeedTopLocationsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualitySpeedTopLocationsFormat($value)'; } 
 }
