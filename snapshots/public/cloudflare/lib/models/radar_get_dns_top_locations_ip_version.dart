// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTopLocationsIpVersion {const RadarGetDnsTopLocationsIpVersion._(this.value);

factory RadarGetDnsTopLocationsIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetDnsTopLocationsIpVersion._(json),
}; }

static const RadarGetDnsTopLocationsIpVersion iPv4 = RadarGetDnsTopLocationsIpVersion._('IPv4');

static const RadarGetDnsTopLocationsIpVersion iPv6 = RadarGetDnsTopLocationsIpVersion._('IPv6');

static const List<RadarGetDnsTopLocationsIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTopLocationsIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTopLocationsIpVersion($value)'; } 
 }
