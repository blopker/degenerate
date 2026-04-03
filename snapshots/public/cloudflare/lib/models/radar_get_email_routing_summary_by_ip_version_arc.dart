// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryByIpVersionArc {const RadarGetEmailRoutingSummaryByIpVersionArc._(this.value);

factory RadarGetEmailRoutingSummaryByIpVersionArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingSummaryByIpVersionArc._(json),
}; }

static const RadarGetEmailRoutingSummaryByIpVersionArc pass = RadarGetEmailRoutingSummaryByIpVersionArc._('PASS');

static const RadarGetEmailRoutingSummaryByIpVersionArc none = RadarGetEmailRoutingSummaryByIpVersionArc._('NONE');

static const RadarGetEmailRoutingSummaryByIpVersionArc fail = RadarGetEmailRoutingSummaryByIpVersionArc._('FAIL');

static const List<RadarGetEmailRoutingSummaryByIpVersionArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByIpVersionArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByIpVersionArc($value)'; } 
 }
