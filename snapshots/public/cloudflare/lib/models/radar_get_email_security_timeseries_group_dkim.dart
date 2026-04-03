// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupDkim {const RadarGetEmailSecurityTimeseriesGroupDkim._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupDkim._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupDkim pass = RadarGetEmailSecurityTimeseriesGroupDkim._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupDkim none = RadarGetEmailSecurityTimeseriesGroupDkim._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupDkim fail = RadarGetEmailSecurityTimeseriesGroupDkim._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupDkim($value)'; } 
 }
