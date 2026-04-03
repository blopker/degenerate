// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of device managed network.
@immutable final class TeamsDevicesComponentsSchemasType {const TeamsDevicesComponentsSchemasType._(this.value);

factory TeamsDevicesComponentsSchemasType.fromJson(String json) { return switch (json) {
  'tls' => tls,
  _ => TeamsDevicesComponentsSchemasType._(json),
}; }

static const TeamsDevicesComponentsSchemasType tls = TeamsDevicesComponentsSchemasType._('tls');

static const List<TeamsDevicesComponentsSchemasType> values = [tls];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsDevicesComponentsSchemasType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsDevicesComponentsSchemasType($value)'; } 
 }
