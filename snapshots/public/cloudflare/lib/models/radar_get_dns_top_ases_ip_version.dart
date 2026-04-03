// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTopAsesIpVersion {const RadarGetDnsTopAsesIpVersion._(this.value);

factory RadarGetDnsTopAsesIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetDnsTopAsesIpVersion._(json),
}; }

static const RadarGetDnsTopAsesIpVersion iPv4 = RadarGetDnsTopAsesIpVersion._('IPv4');

static const RadarGetDnsTopAsesIpVersion iPv6 = RadarGetDnsTopAsesIpVersion._('IPv6');

static const List<RadarGetDnsTopAsesIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTopAsesIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTopAsesIpVersion($value)'; } 
 }
