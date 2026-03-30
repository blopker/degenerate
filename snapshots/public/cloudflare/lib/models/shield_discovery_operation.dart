// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'discovery_origin.dart';import 'discovery_state.dart';import 'shield_endpoint.dart';import 'shield_host.dart';import 'shield_method.dart';import 'shield_timestamp.dart';import 'shield_traffic_stats.dart';import 'shield_uuid.dart';final class ShieldDiscoveryOperation {const ShieldDiscoveryOperation({required this.endpoint, required this.host, required this.method, this.features, required this.id, required this.lastUpdated, required this.origin, required this.state, });

factory ShieldDiscoveryOperation.fromJson(Map<String, dynamic> json) { return ShieldDiscoveryOperation(
  endpoint: ShieldEndpoint.fromJson(json['endpoint'] as String),
  host: ShieldHost.fromJson(json['host'] as String),
  method: ShieldMethod.fromJson(json['method'] as String),
  features: json['features'] != null ? ShieldTrafficStats.fromJson(json['features'] as Map<String, dynamic>) : null,
  id: ShieldUuid.fromJson(json['id'] as String),
  lastUpdated: ShieldTimestamp.fromJson(json['last_updated'] as String),
  origin: (json['origin'] as List<dynamic>).map((e) => DiscoveryOrigin.fromJson(e as String)).toList(),
  state: DiscoveryState.fromJson(json['state'] as String),
); }

final ShieldEndpoint endpoint;

final ShieldHost host;

final ShieldMethod method;

final ShieldTrafficStats? features;

final ShieldUuid id;

final ShieldTimestamp lastUpdated;

/// API discovery engine(s) that discovered this operation
final List<DiscoveryOrigin> origin;

/// State of operation in API Discovery
///   * `review` - Operation is not saved into API Shield Endpoint Management
///   * `saved` - Operation is saved into API Shield Endpoint Management
///   * `ignored` - Operation is marked as ignored
/// 
final DiscoveryState state;

Map<String, dynamic> toJson() { return {
  'endpoint': endpoint.toJson(),
  'host': host.toJson(),
  'method': method.toJson(),
  if (features != null) 'features': features?.toJson(),
  'id': id.toJson(),
  'last_updated': lastUpdated.toJson(),
  'origin': origin.map((e) => e.toJson()).toList(),
  'state': state.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('endpoint') &&
      json.containsKey('host') &&
      json.containsKey('method') &&
      json.containsKey('id') &&
      json.containsKey('last_updated') &&
      json.containsKey('origin') &&
      json.containsKey('state'); } 
ShieldDiscoveryOperation copyWith({ShieldEndpoint? endpoint, ShieldHost? host, ShieldMethod? method, ShieldTrafficStats Function()? features, ShieldUuid? id, ShieldTimestamp? lastUpdated, List<DiscoveryOrigin>? origin, DiscoveryState? state, }) { return ShieldDiscoveryOperation(
  endpoint: endpoint ?? this.endpoint,
  host: host ?? this.host,
  method: method ?? this.method,
  features: features != null ? features() : this.features,
  id: id ?? this.id,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  origin: origin ?? this.origin,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldDiscoveryOperation &&
          endpoint == other.endpoint &&
          host == other.host &&
          method == other.method &&
          features == other.features &&
          id == other.id &&
          lastUpdated == other.lastUpdated &&
          listEquals(origin, other.origin) &&
          state == other.state; } 
@override int get hashCode { return Object.hash(endpoint, host, method, features, id, lastUpdated, Object.hashAll(origin), state); } 
@override String toString() { return 'ShieldDiscoveryOperation(endpoint: $endpoint, host: $host, method: $method, features: $features, id: $id, lastUpdated: $lastUpdated, origin: $origin, state: $state)'; } 
 }
