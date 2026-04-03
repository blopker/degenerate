// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTopAsesByBrowserFamilyFormat {const RadarGetHttpTopAsesByBrowserFamilyFormat._(this.value);

factory RadarGetHttpTopAsesByBrowserFamilyFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopAsesByBrowserFamilyFormat._(json),
}; }

static const RadarGetHttpTopAsesByBrowserFamilyFormat $json = RadarGetHttpTopAsesByBrowserFamilyFormat._('JSON');

static const RadarGetHttpTopAsesByBrowserFamilyFormat csv = RadarGetHttpTopAsesByBrowserFamilyFormat._('CSV');

static const List<RadarGetHttpTopAsesByBrowserFamilyFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByBrowserFamilyFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByBrowserFamilyFormat($value)'; } 
 }
