// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsSummaryByResponseCodeFormat {const RadarGetDnsSummaryByResponseCodeFormat._(this.value);

factory RadarGetDnsSummaryByResponseCodeFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsSummaryByResponseCodeFormat._(json),
}; }

static const RadarGetDnsSummaryByResponseCodeFormat $json = RadarGetDnsSummaryByResponseCodeFormat._('JSON');

static const RadarGetDnsSummaryByResponseCodeFormat csv = RadarGetDnsSummaryByResponseCodeFormat._('CSV');

static const List<RadarGetDnsSummaryByResponseCodeFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByResponseCodeFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByResponseCodeFormat($value)'; } 
 }
