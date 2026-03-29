// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsTimeseriesGroupByResponseCodeProtocol {const RadarGetDnsTimeseriesGroupByResponseCodeProtocol._(this.value);

factory RadarGetDnsTimeseriesGroupByResponseCodeProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'HTTPS' => https,
  'TLS' => tls,
  _ => RadarGetDnsTimeseriesGroupByResponseCodeProtocol._(json),
}; }

static const RadarGetDnsTimeseriesGroupByResponseCodeProtocol udp = RadarGetDnsTimeseriesGroupByResponseCodeProtocol._('UDP');

static const RadarGetDnsTimeseriesGroupByResponseCodeProtocol tcp = RadarGetDnsTimeseriesGroupByResponseCodeProtocol._('TCP');

static const RadarGetDnsTimeseriesGroupByResponseCodeProtocol https = RadarGetDnsTimeseriesGroupByResponseCodeProtocol._('HTTPS');

static const RadarGetDnsTimeseriesGroupByResponseCodeProtocol tls = RadarGetDnsTimeseriesGroupByResponseCodeProtocol._('TLS');

static const List<RadarGetDnsTimeseriesGroupByResponseCodeProtocol> values = [udp, tcp, https, tls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByResponseCodeProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByResponseCodeProtocol($value)'; } 
 }
