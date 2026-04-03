// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Field to order by
@immutable final class DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder {const DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder._(this.value);

factory DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder.fromJson(String json) { return switch (json) {
  'host' => host,
  'method' => method,
  'endpoint' => endpoint,
  'traffic_stats.requests' => trafficStatsRequests,
  'traffic_stats.last_updated' => trafficStatsLastUpdated,
  _ => DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder._(json),
}; }

static const DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder host = DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder._('host');

static const DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder method = DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder._('method');

static const DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder endpoint = DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder._('endpoint');

static const DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder trafficStatsRequests = DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder._('traffic_stats.requests');

static const DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder trafficStatsLastUpdated = DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder._('traffic_stats.last_updated');

static const List<DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder> values = [host, method, endpoint, trafficStatsRequests, trafficStatsLastUpdated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DiscoveryRetrieveDiscoveredOperationsOnAZoneOrder($value)'; } 
 }
