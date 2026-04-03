// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupBySpoofSpf {const RadarGetEmailSecurityTimeseriesGroupBySpoofSpf._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpoofSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpoofSpf._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpoofSpf pass = RadarGetEmailSecurityTimeseriesGroupBySpoofSpf._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofSpf none = RadarGetEmailSecurityTimeseriesGroupBySpoofSpf._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofSpf fail = RadarGetEmailSecurityTimeseriesGroupBySpoofSpf._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpoofSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpoofSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpoofSpf($value)'; } 
 }
