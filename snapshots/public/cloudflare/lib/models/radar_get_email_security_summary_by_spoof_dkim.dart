// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryBySpoofDkim {const RadarGetEmailSecuritySummaryBySpoofDkim._(this.value);

factory RadarGetEmailSecuritySummaryBySpoofDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryBySpoofDkim._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpoofDkim pass = RadarGetEmailSecuritySummaryBySpoofDkim._('PASS');

static const RadarGetEmailSecuritySummaryBySpoofDkim none = RadarGetEmailSecuritySummaryBySpoofDkim._('NONE');

static const RadarGetEmailSecuritySummaryBySpoofDkim fail = RadarGetEmailSecuritySummaryBySpoofDkim._('FAIL');

static const List<RadarGetEmailSecuritySummaryBySpoofDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpoofDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpoofDkim($value)'; } 
 }
