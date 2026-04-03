// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryByMaliciousTlsVersion {const RadarGetEmailSecuritySummaryByMaliciousTlsVersion._(this.value);

factory RadarGetEmailSecuritySummaryByMaliciousTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  _ => RadarGetEmailSecuritySummaryByMaliciousTlsVersion._(json),
}; }

static const RadarGetEmailSecuritySummaryByMaliciousTlsVersion tlSv10 = RadarGetEmailSecuritySummaryByMaliciousTlsVersion._('TLSv1_0');

static const RadarGetEmailSecuritySummaryByMaliciousTlsVersion tlSv11 = RadarGetEmailSecuritySummaryByMaliciousTlsVersion._('TLSv1_1');

static const RadarGetEmailSecuritySummaryByMaliciousTlsVersion tlSv12 = RadarGetEmailSecuritySummaryByMaliciousTlsVersion._('TLSv1_2');

static const RadarGetEmailSecuritySummaryByMaliciousTlsVersion tlSv13 = RadarGetEmailSecuritySummaryByMaliciousTlsVersion._('TLSv1_3');

static const List<RadarGetEmailSecuritySummaryByMaliciousTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByMaliciousTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByMaliciousTlsVersion($value)'; } 
 }
