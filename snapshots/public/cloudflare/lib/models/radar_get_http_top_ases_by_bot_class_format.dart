// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTopAsesByBotClassFormat {const RadarGetHttpTopAsesByBotClassFormat._(this.value);

factory RadarGetHttpTopAsesByBotClassFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopAsesByBotClassFormat._(json),
}; }

static const RadarGetHttpTopAsesByBotClassFormat $json = RadarGetHttpTopAsesByBotClassFormat._('JSON');

static const RadarGetHttpTopAsesByBotClassFormat csv = RadarGetHttpTopAsesByBotClassFormat._('CSV');

static const List<RadarGetHttpTopAsesByBotClassFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByBotClassFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByBotClassFormat($value)'; } 
 }
