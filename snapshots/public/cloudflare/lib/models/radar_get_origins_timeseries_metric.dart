// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the metric to retrieve.
@immutable final class RadarGetOriginsTimeseriesMetric {const RadarGetOriginsTimeseriesMetric._(this.value);

factory RadarGetOriginsTimeseriesMetric.fromJson(String json) { return switch (json) {
  'CONNECTION_FAILURES' => connectionFailures,
  'REQUESTS' => requests,
  'RESPONSE_HEADER_RECEIVE_DURATION' => responseHeaderReceiveDuration,
  'TCP_HANDSHAKE_DURATION' => tcpHandshakeDuration,
  'TCP_RTT' => tcpRtt,
  'TLS_HANDSHAKE_DURATION' => tlsHandshakeDuration,
  _ => RadarGetOriginsTimeseriesMetric._(json),
}; }

static const RadarGetOriginsTimeseriesMetric connectionFailures = RadarGetOriginsTimeseriesMetric._('CONNECTION_FAILURES');

static const RadarGetOriginsTimeseriesMetric requests = RadarGetOriginsTimeseriesMetric._('REQUESTS');

static const RadarGetOriginsTimeseriesMetric responseHeaderReceiveDuration = RadarGetOriginsTimeseriesMetric._('RESPONSE_HEADER_RECEIVE_DURATION');

static const RadarGetOriginsTimeseriesMetric tcpHandshakeDuration = RadarGetOriginsTimeseriesMetric._('TCP_HANDSHAKE_DURATION');

static const RadarGetOriginsTimeseriesMetric tcpRtt = RadarGetOriginsTimeseriesMetric._('TCP_RTT');

static const RadarGetOriginsTimeseriesMetric tlsHandshakeDuration = RadarGetOriginsTimeseriesMetric._('TLS_HANDSHAKE_DURATION');

static const List<RadarGetOriginsTimeseriesMetric> values = [connectionFailures, requests, responseHeaderReceiveDuration, tcpHandshakeDuration, tcpRtt, tlsHandshakeDuration];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsTimeseriesMetric && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsTimeseriesMetric($value)'; } 
 }
