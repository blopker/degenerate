// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the attribute by which to group the results.
@immutable final class RadarGetAiInferenceSummaryDimension {const RadarGetAiInferenceSummaryDimension._(this.value);

factory RadarGetAiInferenceSummaryDimension.fromJson(String json) { return switch (json) {
  'MODEL' => model,
  'TASK' => task,
  _ => RadarGetAiInferenceSummaryDimension._(json),
}; }

static const RadarGetAiInferenceSummaryDimension model = RadarGetAiInferenceSummaryDimension._('MODEL');

static const RadarGetAiInferenceSummaryDimension task = RadarGetAiInferenceSummaryDimension._('TASK');

static const List<RadarGetAiInferenceSummaryDimension> values = [model, task];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceSummaryDimension && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceSummaryDimension($value)'; } 
 }
