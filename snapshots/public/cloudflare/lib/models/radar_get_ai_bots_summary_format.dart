// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAiBotsSummaryFormat {const RadarGetAiBotsSummaryFormat._(this.value);

factory RadarGetAiBotsSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAiBotsSummaryFormat._(json),
}; }

static const RadarGetAiBotsSummaryFormat $json = RadarGetAiBotsSummaryFormat._('JSON');

static const RadarGetAiBotsSummaryFormat csv = RadarGetAiBotsSummaryFormat._('CSV');

static const List<RadarGetAiBotsSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiBotsSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiBotsSummaryFormat($value)'; } 
 }
