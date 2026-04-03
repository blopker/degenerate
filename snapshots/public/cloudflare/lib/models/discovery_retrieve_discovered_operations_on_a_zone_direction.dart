// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Direction to order results.
@immutable final class DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection {const DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection._(this.value);

factory DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection._(json),
}; }

static const DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection asc = DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection._('asc');

static const DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection desc = DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection._('desc');

static const List<DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DiscoveryRetrieveDiscoveredOperationsOnAZoneDirection($value)'; } 
 }
