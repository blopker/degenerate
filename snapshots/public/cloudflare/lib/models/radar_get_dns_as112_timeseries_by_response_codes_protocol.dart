// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsAs112TimeseriesByResponseCodesProtocol {const RadarGetDnsAs112TimeseriesByResponseCodesProtocol._(this.value);

factory RadarGetDnsAs112TimeseriesByResponseCodesProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'HTTPS' => https,
  'TLS' => tls,
  _ => RadarGetDnsAs112TimeseriesByResponseCodesProtocol._(json),
}; }

static const RadarGetDnsAs112TimeseriesByResponseCodesProtocol udp = RadarGetDnsAs112TimeseriesByResponseCodesProtocol._('UDP');

static const RadarGetDnsAs112TimeseriesByResponseCodesProtocol tcp = RadarGetDnsAs112TimeseriesByResponseCodesProtocol._('TCP');

static const RadarGetDnsAs112TimeseriesByResponseCodesProtocol https = RadarGetDnsAs112TimeseriesByResponseCodesProtocol._('HTTPS');

static const RadarGetDnsAs112TimeseriesByResponseCodesProtocol tls = RadarGetDnsAs112TimeseriesByResponseCodesProtocol._('TLS');

static const List<RadarGetDnsAs112TimeseriesByResponseCodesProtocol> values = [udp, tcp, https, tls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesByResponseCodesProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByResponseCodesProtocol($value)'; } 
 }
