// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAiInferenceTimeseriesGroupFormat {const RadarGetAiInferenceTimeseriesGroupFormat._(this.value);

factory RadarGetAiInferenceTimeseriesGroupFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAiInferenceTimeseriesGroupFormat._(json),
}; }

static const RadarGetAiInferenceTimeseriesGroupFormat $json = RadarGetAiInferenceTimeseriesGroupFormat._('JSON');

static const RadarGetAiInferenceTimeseriesGroupFormat csv = RadarGetAiInferenceTimeseriesGroupFormat._('CSV');

static const List<RadarGetAiInferenceTimeseriesGroupFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceTimeseriesGroupFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupFormat($value)'; } 
 }
