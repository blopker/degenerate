// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTopAsesByHttpProtocolFormat {const RadarGetHttpTopAsesByHttpProtocolFormat._(this.value);

factory RadarGetHttpTopAsesByHttpProtocolFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopAsesByHttpProtocolFormat._(json),
}; }

static const RadarGetHttpTopAsesByHttpProtocolFormat $json = RadarGetHttpTopAsesByHttpProtocolFormat._('JSON');

static const RadarGetHttpTopAsesByHttpProtocolFormat csv = RadarGetHttpTopAsesByHttpProtocolFormat._('CSV');

static const List<RadarGetHttpTopAsesByHttpProtocolFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByHttpProtocolFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByHttpProtocolFormat($value)'; } 
 }
