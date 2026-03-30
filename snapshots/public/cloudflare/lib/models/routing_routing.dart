// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_timestamp.dart';/// API Routing settings on endpoint.
final class RoutingRouting {const RoutingRouting({this.lastUpdated, this.route, });

factory RoutingRouting.fromJson(Map<String, dynamic> json) { return RoutingRouting(
  lastUpdated: json['last_updated'] != null ? ShieldTimestamp.fromJson(json['last_updated'] as String) : null,
  route: json['route'] as String?,
); }

final ShieldTimestamp? lastUpdated;

/// Target route.
final String? route;

Map<String, dynamic> toJson() { return {
  if (lastUpdated != null) 'last_updated': lastUpdated?.toJson(),
  'route': ?route,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'last_updated', 'route'}.contains(key)); } 
RoutingRouting copyWith({ShieldTimestamp Function()? lastUpdated, String Function()? route, }) { return RoutingRouting(
  lastUpdated: lastUpdated != null ? lastUpdated() : this.lastUpdated,
  route: route != null ? route() : this.route,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RoutingRouting &&
          lastUpdated == other.lastUpdated &&
          route == other.route; } 
@override int get hashCode { return Object.hash(lastUpdated, route); } 
@override String toString() { return 'RoutingRouting(lastUpdated: $lastUpdated, route: $route)'; } 
 }
