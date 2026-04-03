// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsSummaryByDnssecAwarenessFormat {const RadarGetDnsSummaryByDnssecAwarenessFormat._(this.value);

factory RadarGetDnsSummaryByDnssecAwarenessFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsSummaryByDnssecAwarenessFormat._(json),
}; }

static const RadarGetDnsSummaryByDnssecAwarenessFormat $json = RadarGetDnsSummaryByDnssecAwarenessFormat._('JSON');

static const RadarGetDnsSummaryByDnssecAwarenessFormat csv = RadarGetDnsSummaryByDnssecAwarenessFormat._('CSV');

static const List<RadarGetDnsSummaryByDnssecAwarenessFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByDnssecAwarenessFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByDnssecAwarenessFormat($value)'; } 
 }
