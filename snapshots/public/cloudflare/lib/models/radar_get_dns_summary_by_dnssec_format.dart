// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsSummaryByDnssecFormat {const RadarGetDnsSummaryByDnssecFormat._(this.value);

factory RadarGetDnsSummaryByDnssecFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsSummaryByDnssecFormat._(json),
}; }

static const RadarGetDnsSummaryByDnssecFormat $json = RadarGetDnsSummaryByDnssecFormat._('JSON');

static const RadarGetDnsSummaryByDnssecFormat csv = RadarGetDnsSummaryByDnssecFormat._('CSV');

static const List<RadarGetDnsSummaryByDnssecFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByDnssecFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByDnssecFormat($value)'; } 
 }
