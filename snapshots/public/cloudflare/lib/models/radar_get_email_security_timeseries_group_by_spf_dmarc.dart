// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupBySpfDmarc {const RadarGetEmailSecurityTimeseriesGroupBySpfDmarc._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpfDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpfDmarc._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpfDmarc pass = RadarGetEmailSecurityTimeseriesGroupBySpfDmarc._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupBySpfDmarc none = RadarGetEmailSecurityTimeseriesGroupBySpfDmarc._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupBySpfDmarc fail = RadarGetEmailSecurityTimeseriesGroupBySpfDmarc._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpfDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpfDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpfDmarc($value)'; } 
 }
