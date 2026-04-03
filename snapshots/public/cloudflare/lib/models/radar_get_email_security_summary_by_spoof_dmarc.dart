// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryBySpoofDmarc {const RadarGetEmailSecuritySummaryBySpoofDmarc._(this.value);

factory RadarGetEmailSecuritySummaryBySpoofDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryBySpoofDmarc._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpoofDmarc pass = RadarGetEmailSecuritySummaryBySpoofDmarc._('PASS');

static const RadarGetEmailSecuritySummaryBySpoofDmarc none = RadarGetEmailSecuritySummaryBySpoofDmarc._('NONE');

static const RadarGetEmailSecuritySummaryBySpoofDmarc fail = RadarGetEmailSecuritySummaryBySpoofDmarc._('FAIL');

static const List<RadarGetEmailSecuritySummaryBySpoofDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpoofDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpoofDmarc($value)'; } 
 }
