// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailRoutingSummaryFormat {const RadarGetEmailRoutingSummaryFormat._(this.value);

factory RadarGetEmailRoutingSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailRoutingSummaryFormat._(json),
}; }

static const RadarGetEmailRoutingSummaryFormat $json = RadarGetEmailRoutingSummaryFormat._('JSON');

static const RadarGetEmailRoutingSummaryFormat csv = RadarGetEmailRoutingSummaryFormat._('CSV');

static const List<RadarGetEmailRoutingSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryFormat($value)'; } 
 }
