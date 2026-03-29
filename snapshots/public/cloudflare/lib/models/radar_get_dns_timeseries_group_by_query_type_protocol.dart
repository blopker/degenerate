// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsTimeseriesGroupByQueryTypeProtocol {const RadarGetDnsTimeseriesGroupByQueryTypeProtocol._(this.value);

factory RadarGetDnsTimeseriesGroupByQueryTypeProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'HTTPS' => https,
  'TLS' => tls,
  _ => RadarGetDnsTimeseriesGroupByQueryTypeProtocol._(json),
}; }

static const RadarGetDnsTimeseriesGroupByQueryTypeProtocol udp = RadarGetDnsTimeseriesGroupByQueryTypeProtocol._('UDP');

static const RadarGetDnsTimeseriesGroupByQueryTypeProtocol tcp = RadarGetDnsTimeseriesGroupByQueryTypeProtocol._('TCP');

static const RadarGetDnsTimeseriesGroupByQueryTypeProtocol https = RadarGetDnsTimeseriesGroupByQueryTypeProtocol._('HTTPS');

static const RadarGetDnsTimeseriesGroupByQueryTypeProtocol tls = RadarGetDnsTimeseriesGroupByQueryTypeProtocol._('TLS');

static const List<RadarGetDnsTimeseriesGroupByQueryTypeProtocol> values = [udp, tcp, https, tls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByQueryTypeProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByQueryTypeProtocol($value)'; } 
 }
