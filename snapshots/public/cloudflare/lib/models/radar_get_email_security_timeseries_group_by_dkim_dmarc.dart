// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupByDkimDmarc {const RadarGetEmailSecurityTimeseriesGroupByDkimDmarc._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByDkimDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupByDkimDmarc._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByDkimDmarc pass = RadarGetEmailSecurityTimeseriesGroupByDkimDmarc._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupByDkimDmarc none = RadarGetEmailSecurityTimeseriesGroupByDkimDmarc._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupByDkimDmarc fail = RadarGetEmailSecurityTimeseriesGroupByDkimDmarc._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupByDkimDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByDkimDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByDkimDmarc($value)'; } 
 }
