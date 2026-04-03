// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpSummaryByDeviceTypeFormat {const RadarGetHttpSummaryByDeviceTypeFormat._(this.value);

factory RadarGetHttpSummaryByDeviceTypeFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpSummaryByDeviceTypeFormat._(json),
}; }

static const RadarGetHttpSummaryByDeviceTypeFormat $json = RadarGetHttpSummaryByDeviceTypeFormat._('JSON');

static const RadarGetHttpSummaryByDeviceTypeFormat csv = RadarGetHttpSummaryByDeviceTypeFormat._('CSV');

static const List<RadarGetHttpSummaryByDeviceTypeFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByDeviceTypeFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByDeviceTypeFormat($value)'; } 
 }
