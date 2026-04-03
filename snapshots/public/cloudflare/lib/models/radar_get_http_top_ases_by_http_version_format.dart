// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTopAsesByHttpVersionFormat {const RadarGetHttpTopAsesByHttpVersionFormat._(this.value);

factory RadarGetHttpTopAsesByHttpVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopAsesByHttpVersionFormat._(json),
}; }

static const RadarGetHttpTopAsesByHttpVersionFormat $json = RadarGetHttpTopAsesByHttpVersionFormat._('JSON');

static const RadarGetHttpTopAsesByHttpVersionFormat csv = RadarGetHttpTopAsesByHttpVersionFormat._('CSV');

static const List<RadarGetHttpTopAsesByHttpVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByHttpVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByHttpVersionFormat($value)'; } 
 }
