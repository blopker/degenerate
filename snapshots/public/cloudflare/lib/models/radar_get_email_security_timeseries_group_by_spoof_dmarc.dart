// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc {const RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc pass = RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc none = RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc fail = RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpoofDmarc($value)'; } 
 }
