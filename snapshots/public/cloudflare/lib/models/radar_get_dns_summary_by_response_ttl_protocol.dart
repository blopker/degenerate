// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsSummaryByResponseTtlProtocol {const RadarGetDnsSummaryByResponseTtlProtocol._(this.value);

factory RadarGetDnsSummaryByResponseTtlProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'HTTPS' => https,
  'TLS' => tls,
  _ => RadarGetDnsSummaryByResponseTtlProtocol._(json),
}; }

static const RadarGetDnsSummaryByResponseTtlProtocol udp = RadarGetDnsSummaryByResponseTtlProtocol._('UDP');

static const RadarGetDnsSummaryByResponseTtlProtocol tcp = RadarGetDnsSummaryByResponseTtlProtocol._('TCP');

static const RadarGetDnsSummaryByResponseTtlProtocol https = RadarGetDnsSummaryByResponseTtlProtocol._('HTTPS');

static const RadarGetDnsSummaryByResponseTtlProtocol tls = RadarGetDnsSummaryByResponseTtlProtocol._('TLS');

static const List<RadarGetDnsSummaryByResponseTtlProtocol> values = [udp, tcp, https, tls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByResponseTtlProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByResponseTtlProtocol($value)'; } 
 }
