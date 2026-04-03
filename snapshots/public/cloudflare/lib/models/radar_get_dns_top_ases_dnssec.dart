// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTopAsesDnssec {const RadarGetDnsTopAsesDnssec._(this.value);

factory RadarGetDnsTopAsesDnssec.fromJson(String json) { return switch (json) {
  'INVALID' => invalid,
  'INSECURE' => insecure,
  'SECURE' => secure,
  'OTHER' => $other,
  _ => RadarGetDnsTopAsesDnssec._(json),
}; }

static const RadarGetDnsTopAsesDnssec invalid = RadarGetDnsTopAsesDnssec._('INVALID');

static const RadarGetDnsTopAsesDnssec insecure = RadarGetDnsTopAsesDnssec._('INSECURE');

static const RadarGetDnsTopAsesDnssec secure = RadarGetDnsTopAsesDnssec._('SECURE');

static const RadarGetDnsTopAsesDnssec $other = RadarGetDnsTopAsesDnssec._('OTHER');

static const List<RadarGetDnsTopAsesDnssec> values = [invalid, insecure, secure, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTopAsesDnssec && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTopAsesDnssec($value)'; } 
 }
