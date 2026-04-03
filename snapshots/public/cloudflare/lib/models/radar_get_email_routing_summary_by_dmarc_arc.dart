// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryByDmarcArc {const RadarGetEmailRoutingSummaryByDmarcArc._(this.value);

factory RadarGetEmailRoutingSummaryByDmarcArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingSummaryByDmarcArc._(json),
}; }

static const RadarGetEmailRoutingSummaryByDmarcArc pass = RadarGetEmailRoutingSummaryByDmarcArc._('PASS');

static const RadarGetEmailRoutingSummaryByDmarcArc none = RadarGetEmailRoutingSummaryByDmarcArc._('NONE');

static const RadarGetEmailRoutingSummaryByDmarcArc fail = RadarGetEmailRoutingSummaryByDmarcArc._('FAIL');

static const List<RadarGetEmailRoutingSummaryByDmarcArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByDmarcArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByDmarcArc($value)'; } 
 }
