// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEntitiesAsnListFormat {const RadarGetEntitiesAsnListFormat._(this.value);

factory RadarGetEntitiesAsnListFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEntitiesAsnListFormat._(json),
}; }

static const RadarGetEntitiesAsnListFormat $json = RadarGetEntitiesAsnListFormat._('JSON');

static const RadarGetEntitiesAsnListFormat csv = RadarGetEntitiesAsnListFormat._('CSV');

static const List<RadarGetEntitiesAsnListFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEntitiesAsnListFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEntitiesAsnListFormat($value)'; } 
 }
