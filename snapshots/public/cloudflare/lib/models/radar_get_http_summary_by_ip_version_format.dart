// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpSummaryByIpVersionFormat {const RadarGetHttpSummaryByIpVersionFormat._(this.value);

factory RadarGetHttpSummaryByIpVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpSummaryByIpVersionFormat._(json),
}; }

static const RadarGetHttpSummaryByIpVersionFormat $json = RadarGetHttpSummaryByIpVersionFormat._('JSON');

static const RadarGetHttpSummaryByIpVersionFormat csv = RadarGetHttpSummaryByIpVersionFormat._('CSV');

static const List<RadarGetHttpSummaryByIpVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByIpVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByIpVersionFormat($value)'; } 
 }
