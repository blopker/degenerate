// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEntitiesLocationsFormat {const RadarGetEntitiesLocationsFormat._(this.value);

factory RadarGetEntitiesLocationsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEntitiesLocationsFormat._(json),
}; }

static const RadarGetEntitiesLocationsFormat $json = RadarGetEntitiesLocationsFormat._('JSON');

static const RadarGetEntitiesLocationsFormat csv = RadarGetEntitiesLocationsFormat._('CSV');

static const List<RadarGetEntitiesLocationsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEntitiesLocationsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEntitiesLocationsFormat($value)'; } 
 }
