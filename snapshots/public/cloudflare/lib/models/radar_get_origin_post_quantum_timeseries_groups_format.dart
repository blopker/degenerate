// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetOriginPostQuantumTimeseriesGroupsFormat {const RadarGetOriginPostQuantumTimeseriesGroupsFormat._(this.value);

factory RadarGetOriginPostQuantumTimeseriesGroupsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetOriginPostQuantumTimeseriesGroupsFormat._(json),
}; }

static const RadarGetOriginPostQuantumTimeseriesGroupsFormat $json = RadarGetOriginPostQuantumTimeseriesGroupsFormat._('JSON');

static const RadarGetOriginPostQuantumTimeseriesGroupsFormat csv = RadarGetOriginPostQuantumTimeseriesGroupsFormat._('CSV');

static const List<RadarGetOriginPostQuantumTimeseriesGroupsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginPostQuantumTimeseriesGroupsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginPostQuantumTimeseriesGroupsFormat($value)'; } 
 }
