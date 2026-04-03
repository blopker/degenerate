// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailRoutingSummaryByDmarcFormat {const RadarGetEmailRoutingSummaryByDmarcFormat._(this.value);

factory RadarGetEmailRoutingSummaryByDmarcFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailRoutingSummaryByDmarcFormat._(json),
}; }

static const RadarGetEmailRoutingSummaryByDmarcFormat $json = RadarGetEmailRoutingSummaryByDmarcFormat._('JSON');

static const RadarGetEmailRoutingSummaryByDmarcFormat csv = RadarGetEmailRoutingSummaryByDmarcFormat._('CSV');

static const List<RadarGetEmailRoutingSummaryByDmarcFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByDmarcFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByDmarcFormat($value)'; } 
 }
