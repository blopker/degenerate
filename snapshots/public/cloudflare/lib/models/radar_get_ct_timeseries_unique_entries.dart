// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtTimeseriesUniqueEntries {const RadarGetCtTimeseriesUniqueEntries._(this.value);

factory RadarGetCtTimeseriesUniqueEntries.fromJson(String json) { return switch (json) {
  'true' => $true,
  'false' => $false,
  _ => RadarGetCtTimeseriesUniqueEntries._(json),
}; }

static const RadarGetCtTimeseriesUniqueEntries $true = RadarGetCtTimeseriesUniqueEntries._('true');

static const RadarGetCtTimeseriesUniqueEntries $false = RadarGetCtTimeseriesUniqueEntries._('false');

static const List<RadarGetCtTimeseriesUniqueEntries> values = [$true, $false];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtTimeseriesUniqueEntries && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtTimeseriesUniqueEntries($value)'; } 
 }
