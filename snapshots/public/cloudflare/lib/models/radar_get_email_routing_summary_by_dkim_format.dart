// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailRoutingSummaryByDkimFormat {const RadarGetEmailRoutingSummaryByDkimFormat._(this.value);

factory RadarGetEmailRoutingSummaryByDkimFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailRoutingSummaryByDkimFormat._(json),
}; }

static const RadarGetEmailRoutingSummaryByDkimFormat $json = RadarGetEmailRoutingSummaryByDkimFormat._('JSON');

static const RadarGetEmailRoutingSummaryByDkimFormat csv = RadarGetEmailRoutingSummaryByDkimFormat._('CSV');

static const List<RadarGetEmailRoutingSummaryByDkimFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByDkimFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByDkimFormat($value)'; } 
 }
