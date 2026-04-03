// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTimeseriesDnssecAware {const RadarGetDnsTimeseriesDnssecAware._(this.value);

factory RadarGetDnsTimeseriesDnssecAware.fromJson(String json) { return switch (json) {
  'SUPPORTED' => supported,
  'NOT_SUPPORTED' => notSupported,
  _ => RadarGetDnsTimeseriesDnssecAware._(json),
}; }

static const RadarGetDnsTimeseriesDnssecAware supported = RadarGetDnsTimeseriesDnssecAware._('SUPPORTED');

static const RadarGetDnsTimeseriesDnssecAware notSupported = RadarGetDnsTimeseriesDnssecAware._('NOT_SUPPORTED');

static const List<RadarGetDnsTimeseriesDnssecAware> values = [supported, notSupported];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesDnssecAware && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesDnssecAware($value)'; } 
 }
