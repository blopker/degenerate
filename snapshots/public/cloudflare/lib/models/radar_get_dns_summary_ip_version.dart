// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsSummaryIpVersion {const RadarGetDnsSummaryIpVersion._(this.value);

factory RadarGetDnsSummaryIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetDnsSummaryIpVersion._(json),
}; }

static const RadarGetDnsSummaryIpVersion iPv4 = RadarGetDnsSummaryIpVersion._('IPv4');

static const RadarGetDnsSummaryIpVersion iPv6 = RadarGetDnsSummaryIpVersion._('IPv6');

static const List<RadarGetDnsSummaryIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryIpVersion($value)'; } 
 }
