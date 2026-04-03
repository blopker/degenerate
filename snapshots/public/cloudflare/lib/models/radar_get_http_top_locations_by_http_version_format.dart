// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTopLocationsByHttpVersionFormat {const RadarGetHttpTopLocationsByHttpVersionFormat._(this.value);

factory RadarGetHttpTopLocationsByHttpVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopLocationsByHttpVersionFormat._(json),
}; }

static const RadarGetHttpTopLocationsByHttpVersionFormat $json = RadarGetHttpTopLocationsByHttpVersionFormat._('JSON');

static const RadarGetHttpTopLocationsByHttpVersionFormat csv = RadarGetHttpTopLocationsByHttpVersionFormat._('CSV');

static const List<RadarGetHttpTopLocationsByHttpVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionFormat($value)'; } 
 }
