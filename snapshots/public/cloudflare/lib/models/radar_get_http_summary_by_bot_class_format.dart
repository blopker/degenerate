// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpSummaryByBotClassFormat {const RadarGetHttpSummaryByBotClassFormat._(this.value);

factory RadarGetHttpSummaryByBotClassFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpSummaryByBotClassFormat._(json),
}; }

static const RadarGetHttpSummaryByBotClassFormat $json = RadarGetHttpSummaryByBotClassFormat._('JSON');

static const RadarGetHttpSummaryByBotClassFormat csv = RadarGetHttpSummaryByBotClassFormat._('CSV');

static const List<RadarGetHttpSummaryByBotClassFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByBotClassFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByBotClassFormat($value)'; } 
 }
