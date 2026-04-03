// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsAs112SummaryProtocol {const RadarGetDnsAs112SummaryProtocol._(this.value);

factory RadarGetDnsAs112SummaryProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'HTTPS' => https,
  'TLS' => tls,
  _ => RadarGetDnsAs112SummaryProtocol._(json),
}; }

static const RadarGetDnsAs112SummaryProtocol udp = RadarGetDnsAs112SummaryProtocol._('UDP');

static const RadarGetDnsAs112SummaryProtocol tcp = RadarGetDnsAs112SummaryProtocol._('TCP');

static const RadarGetDnsAs112SummaryProtocol https = RadarGetDnsAs112SummaryProtocol._('HTTPS');

static const RadarGetDnsAs112SummaryProtocol tls = RadarGetDnsAs112SummaryProtocol._('TLS');

static const List<RadarGetDnsAs112SummaryProtocol> values = [udp, tcp, https, tls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112SummaryProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112SummaryProtocol($value)'; } 
 }
