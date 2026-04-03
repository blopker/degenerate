// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryBySpfDmarc {const RadarGetEmailSecuritySummaryBySpfDmarc._(this.value);

factory RadarGetEmailSecuritySummaryBySpfDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryBySpfDmarc._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpfDmarc pass = RadarGetEmailSecuritySummaryBySpfDmarc._('PASS');

static const RadarGetEmailSecuritySummaryBySpfDmarc none = RadarGetEmailSecuritySummaryBySpfDmarc._('NONE');

static const RadarGetEmailSecuritySummaryBySpfDmarc fail = RadarGetEmailSecuritySummaryBySpfDmarc._('FAIL');

static const List<RadarGetEmailSecuritySummaryBySpfDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpfDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpfDmarc($value)'; } 
 }
