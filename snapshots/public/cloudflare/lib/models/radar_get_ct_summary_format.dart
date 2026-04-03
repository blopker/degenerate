// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetCtSummaryFormat {const RadarGetCtSummaryFormat._(this.value);

factory RadarGetCtSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetCtSummaryFormat._(json),
}; }

static const RadarGetCtSummaryFormat $json = RadarGetCtSummaryFormat._('JSON');

static const RadarGetCtSummaryFormat csv = RadarGetCtSummaryFormat._('CSV');

static const List<RadarGetCtSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtSummaryFormat($value)'; } 
 }
