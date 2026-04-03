// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryByIpVersionDkim {const RadarGetEmailRoutingSummaryByIpVersionDkim._(this.value);

factory RadarGetEmailRoutingSummaryByIpVersionDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingSummaryByIpVersionDkim._(json),
}; }

static const RadarGetEmailRoutingSummaryByIpVersionDkim pass = RadarGetEmailRoutingSummaryByIpVersionDkim._('PASS');

static const RadarGetEmailRoutingSummaryByIpVersionDkim none = RadarGetEmailRoutingSummaryByIpVersionDkim._('NONE');

static const RadarGetEmailRoutingSummaryByIpVersionDkim fail = RadarGetEmailRoutingSummaryByIpVersionDkim._('FAIL');

static const List<RadarGetEmailRoutingSummaryByIpVersionDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByIpVersionDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByIpVersionDkim($value)'; } 
 }
