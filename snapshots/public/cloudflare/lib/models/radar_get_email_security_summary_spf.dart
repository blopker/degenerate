// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummarySpf {const RadarGetEmailSecuritySummarySpf._(this.value);

factory RadarGetEmailSecuritySummarySpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummarySpf._(json),
}; }

static const RadarGetEmailSecuritySummarySpf pass = RadarGetEmailSecuritySummarySpf._('PASS');

static const RadarGetEmailSecuritySummarySpf none = RadarGetEmailSecuritySummarySpf._('NONE');

static const RadarGetEmailSecuritySummarySpf fail = RadarGetEmailSecuritySummarySpf._('FAIL');

static const List<RadarGetEmailSecuritySummarySpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummarySpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummarySpf($value)'; } 
 }
