// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsSummaryDnssec {const RadarGetDnsSummaryDnssec._(this.value);

factory RadarGetDnsSummaryDnssec.fromJson(String json) { return switch (json) {
  'INVALID' => invalid,
  'INSECURE' => insecure,
  'SECURE' => secure,
  'OTHER' => $other,
  _ => RadarGetDnsSummaryDnssec._(json),
}; }

static const RadarGetDnsSummaryDnssec invalid = RadarGetDnsSummaryDnssec._('INVALID');

static const RadarGetDnsSummaryDnssec insecure = RadarGetDnsSummaryDnssec._('INSECURE');

static const RadarGetDnsSummaryDnssec secure = RadarGetDnsSummaryDnssec._('SECURE');

static const RadarGetDnsSummaryDnssec $other = RadarGetDnsSummaryDnssec._('OTHER');

static const List<RadarGetDnsSummaryDnssec> values = [invalid, insecure, secure, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryDnssec && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryDnssec($value)'; } 
 }
