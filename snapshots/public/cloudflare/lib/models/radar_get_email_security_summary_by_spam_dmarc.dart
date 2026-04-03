// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryBySpamDmarc {const RadarGetEmailSecuritySummaryBySpamDmarc._(this.value);

factory RadarGetEmailSecuritySummaryBySpamDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryBySpamDmarc._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpamDmarc pass = RadarGetEmailSecuritySummaryBySpamDmarc._('PASS');

static const RadarGetEmailSecuritySummaryBySpamDmarc none = RadarGetEmailSecuritySummaryBySpamDmarc._('NONE');

static const RadarGetEmailSecuritySummaryBySpamDmarc fail = RadarGetEmailSecuritySummaryBySpamDmarc._('FAIL');

static const List<RadarGetEmailSecuritySummaryBySpamDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpamDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpamDmarc($value)'; } 
 }
