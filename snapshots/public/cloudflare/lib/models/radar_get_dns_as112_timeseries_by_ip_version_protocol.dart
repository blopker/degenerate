// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsAs112TimeseriesByIpVersionProtocol {const RadarGetDnsAs112TimeseriesByIpVersionProtocol._(this.value);

factory RadarGetDnsAs112TimeseriesByIpVersionProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'HTTPS' => https,
  'TLS' => tls,
  _ => RadarGetDnsAs112TimeseriesByIpVersionProtocol._(json),
}; }

static const RadarGetDnsAs112TimeseriesByIpVersionProtocol udp = RadarGetDnsAs112TimeseriesByIpVersionProtocol._('UDP');

static const RadarGetDnsAs112TimeseriesByIpVersionProtocol tcp = RadarGetDnsAs112TimeseriesByIpVersionProtocol._('TCP');

static const RadarGetDnsAs112TimeseriesByIpVersionProtocol https = RadarGetDnsAs112TimeseriesByIpVersionProtocol._('HTTPS');

static const RadarGetDnsAs112TimeseriesByIpVersionProtocol tls = RadarGetDnsAs112TimeseriesByIpVersionProtocol._('TLS');

static const List<RadarGetDnsAs112TimeseriesByIpVersionProtocol> values = [udp, tcp, https, tls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesByIpVersionProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByIpVersionProtocol($value)'; } 
 }
