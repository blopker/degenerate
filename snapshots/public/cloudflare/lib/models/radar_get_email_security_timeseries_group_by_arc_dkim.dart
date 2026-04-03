// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupByArcDkim {const RadarGetEmailSecurityTimeseriesGroupByArcDkim._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByArcDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupByArcDkim._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByArcDkim pass = RadarGetEmailSecurityTimeseriesGroupByArcDkim._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupByArcDkim none = RadarGetEmailSecurityTimeseriesGroupByArcDkim._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupByArcDkim fail = RadarGetEmailSecurityTimeseriesGroupByArcDkim._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupByArcDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByArcDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByArcDkim($value)'; } 
 }
