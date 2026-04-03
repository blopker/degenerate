// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAiBotsTimeseriesFormat {const RadarGetAiBotsTimeseriesFormat._(this.value);

factory RadarGetAiBotsTimeseriesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAiBotsTimeseriesFormat._(json),
}; }

static const RadarGetAiBotsTimeseriesFormat $json = RadarGetAiBotsTimeseriesFormat._('JSON');

static const RadarGetAiBotsTimeseriesFormat csv = RadarGetAiBotsTimeseriesFormat._('CSV');

static const List<RadarGetAiBotsTimeseriesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiBotsTimeseriesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiBotsTimeseriesFormat($value)'; } 
 }
