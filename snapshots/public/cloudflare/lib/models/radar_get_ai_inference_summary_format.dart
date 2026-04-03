// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAiInferenceSummaryFormat {const RadarGetAiInferenceSummaryFormat._(this.value);

factory RadarGetAiInferenceSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAiInferenceSummaryFormat._(json),
}; }

static const RadarGetAiInferenceSummaryFormat $json = RadarGetAiInferenceSummaryFormat._('JSON');

static const RadarGetAiInferenceSummaryFormat csv = RadarGetAiInferenceSummaryFormat._('CSV');

static const List<RadarGetAiInferenceSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceSummaryFormat($value)'; } 
 }
