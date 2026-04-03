// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTopLocationsDnssecAware {const RadarGetDnsTopLocationsDnssecAware._(this.value);

factory RadarGetDnsTopLocationsDnssecAware.fromJson(String json) { return switch (json) {
  'SUPPORTED' => supported,
  'NOT_SUPPORTED' => notSupported,
  _ => RadarGetDnsTopLocationsDnssecAware._(json),
}; }

static const RadarGetDnsTopLocationsDnssecAware supported = RadarGetDnsTopLocationsDnssecAware._('SUPPORTED');

static const RadarGetDnsTopLocationsDnssecAware notSupported = RadarGetDnsTopLocationsDnssecAware._('NOT_SUPPORTED');

static const List<RadarGetDnsTopLocationsDnssecAware> values = [supported, notSupported];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTopLocationsDnssecAware && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTopLocationsDnssecAware($value)'; } 
 }
