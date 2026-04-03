// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryByArcDkim {const RadarGetEmailRoutingSummaryByArcDkim._(this.value);

factory RadarGetEmailRoutingSummaryByArcDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingSummaryByArcDkim._(json),
}; }

static const RadarGetEmailRoutingSummaryByArcDkim pass = RadarGetEmailRoutingSummaryByArcDkim._('PASS');

static const RadarGetEmailRoutingSummaryByArcDkim none = RadarGetEmailRoutingSummaryByArcDkim._('NONE');

static const RadarGetEmailRoutingSummaryByArcDkim fail = RadarGetEmailRoutingSummaryByArcDkim._('FAIL');

static const List<RadarGetEmailRoutingSummaryByArcDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByArcDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByArcDkim($value)'; } 
 }
