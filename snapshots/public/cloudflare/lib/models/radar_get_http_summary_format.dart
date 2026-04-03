// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpSummaryFormat {const RadarGetHttpSummaryFormat._(this.value);

factory RadarGetHttpSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpSummaryFormat._(json),
}; }

static const RadarGetHttpSummaryFormat $json = RadarGetHttpSummaryFormat._('JSON');

static const RadarGetHttpSummaryFormat csv = RadarGetHttpSummaryFormat._('CSV');

static const List<RadarGetHttpSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryFormat($value)'; } 
 }
