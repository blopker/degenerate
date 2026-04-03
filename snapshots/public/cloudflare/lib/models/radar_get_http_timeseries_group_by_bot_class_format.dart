// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTimeseriesGroupByBotClassFormat {const RadarGetHttpTimeseriesGroupByBotClassFormat._(this.value);

factory RadarGetHttpTimeseriesGroupByBotClassFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTimeseriesGroupByBotClassFormat._(json),
}; }

static const RadarGetHttpTimeseriesGroupByBotClassFormat $json = RadarGetHttpTimeseriesGroupByBotClassFormat._('JSON');

static const RadarGetHttpTimeseriesGroupByBotClassFormat csv = RadarGetHttpTimeseriesGroupByBotClassFormat._('CSV');

static const List<RadarGetHttpTimeseriesGroupByBotClassFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByBotClassFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBotClassFormat($value)'; } 
 }
