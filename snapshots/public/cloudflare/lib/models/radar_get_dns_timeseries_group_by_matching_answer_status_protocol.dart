// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol {const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol._(this.value);

factory RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'HTTPS' => https,
  'TLS' => tls,
  _ => RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol._(json),
}; }

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol udp = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol._('UDP');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol tcp = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol._('TCP');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol https = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol._('HTTPS');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol tls = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol._('TLS');

static const List<RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol> values = [udp, tcp, https, tls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByMatchingAnswerStatusProtocol($value)'; } 
 }
