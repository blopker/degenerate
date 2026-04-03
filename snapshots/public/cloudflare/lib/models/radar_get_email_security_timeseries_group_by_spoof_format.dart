// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailSecurityTimeseriesGroupBySpoofFormat {const RadarGetEmailSecurityTimeseriesGroupBySpoofFormat._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpoofFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpoofFormat._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpoofFormat $json = RadarGetEmailSecurityTimeseriesGroupBySpoofFormat._('JSON');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofFormat csv = RadarGetEmailSecurityTimeseriesGroupBySpoofFormat._('CSV');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpoofFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpoofFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpoofFormat($value)'; } 
 }
