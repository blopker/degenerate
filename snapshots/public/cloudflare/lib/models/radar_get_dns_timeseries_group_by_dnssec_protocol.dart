// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsTimeseriesGroupByDnssecProtocol {const RadarGetDnsTimeseriesGroupByDnssecProtocol._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'HTTPS' => https,
  'TLS' => tls,
  _ => RadarGetDnsTimeseriesGroupByDnssecProtocol._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecProtocol udp = RadarGetDnsTimeseriesGroupByDnssecProtocol._('UDP');

static const RadarGetDnsTimeseriesGroupByDnssecProtocol tcp = RadarGetDnsTimeseriesGroupByDnssecProtocol._('TCP');

static const RadarGetDnsTimeseriesGroupByDnssecProtocol https = RadarGetDnsTimeseriesGroupByDnssecProtocol._('HTTPS');

static const RadarGetDnsTimeseriesGroupByDnssecProtocol tls = RadarGetDnsTimeseriesGroupByDnssecProtocol._('TLS');

static const List<RadarGetDnsTimeseriesGroupByDnssecProtocol> values = [udp, tcp, https, tls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecProtocol($value)'; } 
 }
