// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_load_balancer.dart';final class LoadBalancingLoadBalancerComponentsSchemasResponseCollection {const LoadBalancingLoadBalancerComponentsSchemasResponseCollection({this.result});

factory LoadBalancingLoadBalancerComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return LoadBalancingLoadBalancerComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => LoadBalancingLoadBalancer.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<LoadBalancingLoadBalancer>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingLoadBalancerComponentsSchemasResponseCollection copyWith({List<LoadBalancingLoadBalancer> Function()? result}) { return LoadBalancingLoadBalancerComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingLoadBalancerComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'LoadBalancingLoadBalancerComponentsSchemasResponseCollection(result: $result)'; } 
 }
