// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_filter_options.dart';/// Filter pool and origin health notifications by resource type or health status. Use null to reset.
@immutable final class LoadBalancingNotificationFilter {const LoadBalancingNotificationFilter({this.origin, this.pool, });

factory LoadBalancingNotificationFilter.fromJson(Map<String, dynamic> json) { return LoadBalancingNotificationFilter(
  origin: json['origin'] != null ? LoadBalancingFilterOptions.fromJson(json['origin'] as Map<String, dynamic>) : null,
  pool: json['pool'] != null ? LoadBalancingFilterOptions.fromJson(json['pool'] as Map<String, dynamic>) : null,
); }

final LoadBalancingFilterOptions? origin;

final LoadBalancingFilterOptions? pool;

Map<String, dynamic> toJson() { return {
  if (origin != null) 'origin': origin?.toJson(),
  if (pool != null) 'pool': pool?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'origin', 'pool'}.contains(key)); } 
LoadBalancingNotificationFilter copyWith({LoadBalancingFilterOptions Function()? origin, LoadBalancingFilterOptions Function()? pool, }) { return LoadBalancingNotificationFilter(
  origin: origin != null ? origin() : this.origin,
  pool: pool != null ? pool() : this.pool,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingNotificationFilter &&
          origin == other.origin &&
          pool == other.pool; } 
@override int get hashCode { return Object.hash(origin, pool); } 
@override String toString() { return 'LoadBalancingNotificationFilter(origin: $origin, pool: $pool)'; } 
 }
