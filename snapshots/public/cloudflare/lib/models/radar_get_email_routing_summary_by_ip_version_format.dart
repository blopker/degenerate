// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailRoutingSummaryByIpVersionFormat {const RadarGetEmailRoutingSummaryByIpVersionFormat._(this.value);

factory RadarGetEmailRoutingSummaryByIpVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailRoutingSummaryByIpVersionFormat._(json),
}; }

static const RadarGetEmailRoutingSummaryByIpVersionFormat $json = RadarGetEmailRoutingSummaryByIpVersionFormat._('JSON');

static const RadarGetEmailRoutingSummaryByIpVersionFormat csv = RadarGetEmailRoutingSummaryByIpVersionFormat._('CSV');

static const List<RadarGetEmailRoutingSummaryByIpVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByIpVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByIpVersionFormat($value)'; } 
 }
