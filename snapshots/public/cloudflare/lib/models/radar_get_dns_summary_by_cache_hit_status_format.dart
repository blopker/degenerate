// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsSummaryByCacheHitStatusFormat {const RadarGetDnsSummaryByCacheHitStatusFormat._(this.value);

factory RadarGetDnsSummaryByCacheHitStatusFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsSummaryByCacheHitStatusFormat._(json),
}; }

static const RadarGetDnsSummaryByCacheHitStatusFormat $json = RadarGetDnsSummaryByCacheHitStatusFormat._('JSON');

static const RadarGetDnsSummaryByCacheHitStatusFormat csv = RadarGetDnsSummaryByCacheHitStatusFormat._('CSV');

static const List<RadarGetDnsSummaryByCacheHitStatusFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByCacheHitStatusFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByCacheHitStatusFormat($value)'; } 
 }
