// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DexEndpointsTracerouteTestNetworkPathInterval {const DexEndpointsTracerouteTestNetworkPathInterval._(this.value);

factory DexEndpointsTracerouteTestNetworkPathInterval.fromJson(String json) { return switch (json) {
  'minute' => minute,
  'hour' => hour,
  _ => DexEndpointsTracerouteTestNetworkPathInterval._(json),
}; }

static const DexEndpointsTracerouteTestNetworkPathInterval minute = DexEndpointsTracerouteTestNetworkPathInterval._('minute');

static const DexEndpointsTracerouteTestNetworkPathInterval hour = DexEndpointsTracerouteTestNetworkPathInterval._('hour');

static const List<DexEndpointsTracerouteTestNetworkPathInterval> values = [minute, hour];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DexEndpointsTracerouteTestNetworkPathInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DexEndpointsTracerouteTestNetworkPathInterval($value)'; } 
 }
