// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion {const RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion tlSv10 = RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion._('TLSv1_0');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion tlSv11 = RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion._('TLSv1_1');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion tlSv12 = RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion._('TLSv1_2');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion tlSv13 = RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion._('TLSv1_3');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpoofTlsVersion($value)'; } 
 }
