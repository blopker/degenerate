// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupByArcSpf {const RadarGetEmailSecurityTimeseriesGroupByArcSpf._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByArcSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupByArcSpf._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByArcSpf pass = RadarGetEmailSecurityTimeseriesGroupByArcSpf._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupByArcSpf none = RadarGetEmailSecurityTimeseriesGroupByArcSpf._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupByArcSpf fail = RadarGetEmailSecurityTimeseriesGroupByArcSpf._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupByArcSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByArcSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByArcSpf($value)'; } 
 }
