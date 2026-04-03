// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsTimeseriesGroupByResponseCodeFormat {const RadarGetDnsTimeseriesGroupByResponseCodeFormat._(this.value);

factory RadarGetDnsTimeseriesGroupByResponseCodeFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsTimeseriesGroupByResponseCodeFormat._(json),
}; }

static const RadarGetDnsTimeseriesGroupByResponseCodeFormat $json = RadarGetDnsTimeseriesGroupByResponseCodeFormat._('JSON');

static const RadarGetDnsTimeseriesGroupByResponseCodeFormat csv = RadarGetDnsTimeseriesGroupByResponseCodeFormat._('CSV');

static const List<RadarGetDnsTimeseriesGroupByResponseCodeFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByResponseCodeFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByResponseCodeFormat($value)'; } 
 }
