// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailSecurityTimeseriesGroupBySpfFormat {const RadarGetEmailSecurityTimeseriesGroupBySpfFormat._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpfFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpfFormat._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpfFormat $json = RadarGetEmailSecurityTimeseriesGroupBySpfFormat._('JSON');

static const RadarGetEmailSecurityTimeseriesGroupBySpfFormat csv = RadarGetEmailSecurityTimeseriesGroupBySpfFormat._('CSV');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpfFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpfFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpfFormat($value)'; } 
 }
