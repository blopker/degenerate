// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_origin_health.dart';/// List of regions and associated health status.
final class LoadBalancingHealthDetailsResultPopHealth {const LoadBalancingHealthDetailsResultPopHealth({this.healthy, this.origins, });

factory LoadBalancingHealthDetailsResultPopHealth.fromJson(Map<String, dynamic> json) { return LoadBalancingHealthDetailsResultPopHealth(
  healthy: json['healthy'] as bool?,
  origins: (json['origins'] as List<dynamic>?)?.map((e) => LoadBalancingOriginHealth.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Whether health check in region is healthy.
final bool? healthy;

final List<LoadBalancingOriginHealth>? origins;

Map<String, dynamic> toJson() { return {
  'healthy': ?healthy,
  if (origins != null) 'origins': origins?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'healthy', 'origins'}.contains(key)); } 
LoadBalancingHealthDetailsResultPopHealth copyWith({bool Function()? healthy, List<LoadBalancingOriginHealth> Function()? origins, }) { return LoadBalancingHealthDetailsResultPopHealth(
  healthy: healthy != null ? healthy() : this.healthy,
  origins: origins != null ? origins() : this.origins,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingHealthDetailsResultPopHealth &&
          healthy == other.healthy &&
          listEquals(origins, other.origins); } 
@override int get hashCode { return Object.hash(healthy, Object.hashAll(origins ?? const [])); } 
@override String toString() { return 'LoadBalancingHealthDetailsResultPopHealth(healthy: $healthy, origins: $origins)'; } 
 }
