// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf {const RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf pass = RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf none = RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf fail = RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByTlsVersionSpf($value)'; } 
 }
