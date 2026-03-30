// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'condition.dart';import 'load_balancer_status.dart';/// ServiceStatus represents the current status of a service.
final class ServiceStatus {const ServiceStatus({this.conditions, this.loadBalancer, });

factory ServiceStatus.fromJson(Map<String, dynamic> json) { return ServiceStatus(
  conditions: (json['conditions'] as List<dynamic>?)?.map((e) => Condition.fromJson(e as Map<String, dynamic>)).toList(),
  loadBalancer: json['loadBalancer'] != null ? LoadBalancerStatus.fromJson(json['loadBalancer'] as Map<String, dynamic>) : null,
); }

/// Current service state
final List<Condition>? conditions;

/// LoadBalancer contains the current status of the load-balancer, if one is present.
final LoadBalancerStatus? loadBalancer;

Map<String, dynamic> toJson() { return {
  if (conditions != null) 'conditions': conditions?.map((e) => e.toJson()).toList(),
  if (loadBalancer != null) 'loadBalancer': loadBalancer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'conditions', 'loadBalancer'}.contains(key)); } 
ServiceStatus copyWith({List<Condition> Function()? conditions, LoadBalancerStatus Function()? loadBalancer, }) { return ServiceStatus(
  conditions: conditions != null ? conditions() : this.conditions,
  loadBalancer: loadBalancer != null ? loadBalancer() : this.loadBalancer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ServiceStatus &&
          listEquals(conditions, other.conditions) &&
          loadBalancer == other.loadBalancer; } 
@override int get hashCode { return Object.hash(Object.hashAll(conditions ?? const []), loadBalancer); } 
@override String toString() { return 'ServiceStatus(conditions: $conditions, loadBalancer: $loadBalancer)'; } 
 }
