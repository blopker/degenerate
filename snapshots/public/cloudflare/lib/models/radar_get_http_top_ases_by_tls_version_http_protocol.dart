// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByTlsVersionHttpProtocol {const RadarGetHttpTopAsesByTlsVersionHttpProtocol._(this.value);

factory RadarGetHttpTopAsesByTlsVersionHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTopAsesByTlsVersionHttpProtocol._(json),
}; }

static const RadarGetHttpTopAsesByTlsVersionHttpProtocol http = RadarGetHttpTopAsesByTlsVersionHttpProtocol._('HTTP');

static const RadarGetHttpTopAsesByTlsVersionHttpProtocol https = RadarGetHttpTopAsesByTlsVersionHttpProtocol._('HTTPS');

static const List<RadarGetHttpTopAsesByTlsVersionHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByTlsVersionHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByTlsVersionHttpProtocol($value)'; } 
 }
