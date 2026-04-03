// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTimeseriesGroupByDeviceTypeFormat {const RadarGetHttpTimeseriesGroupByDeviceTypeFormat._(this.value);

factory RadarGetHttpTimeseriesGroupByDeviceTypeFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTimeseriesGroupByDeviceTypeFormat._(json),
}; }

static const RadarGetHttpTimeseriesGroupByDeviceTypeFormat $json = RadarGetHttpTimeseriesGroupByDeviceTypeFormat._('JSON');

static const RadarGetHttpTimeseriesGroupByDeviceTypeFormat csv = RadarGetHttpTimeseriesGroupByDeviceTypeFormat._('CSV');

static const List<RadarGetHttpTimeseriesGroupByDeviceTypeFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByDeviceTypeFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByDeviceTypeFormat($value)'; } 
 }
