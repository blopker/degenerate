// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetBotsSummaryFormat {const RadarGetBotsSummaryFormat._(this.value);

factory RadarGetBotsSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetBotsSummaryFormat._(json),
}; }

static const RadarGetBotsSummaryFormat $json = RadarGetBotsSummaryFormat._('JSON');

static const RadarGetBotsSummaryFormat csv = RadarGetBotsSummaryFormat._('CSV');

static const List<RadarGetBotsSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsSummaryFormat($value)'; } 
 }
