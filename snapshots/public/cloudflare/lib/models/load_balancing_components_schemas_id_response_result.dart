// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_load_balancer_components_schemas_identifier.dart';@immutable final class LoadBalancingComponentsSchemasIdResponseResult {const LoadBalancingComponentsSchemasIdResponseResult({this.id});

factory LoadBalancingComponentsSchemasIdResponseResult.fromJson(Map<String, dynamic> json) { return LoadBalancingComponentsSchemasIdResponseResult(
  id: json['id'] != null ? LoadBalancingLoadBalancerComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
); }

final LoadBalancingLoadBalancerComponentsSchemasIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
LoadBalancingComponentsSchemasIdResponseResult copyWith({LoadBalancingLoadBalancerComponentsSchemasIdentifier Function()? id}) { return LoadBalancingComponentsSchemasIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingComponentsSchemasIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'LoadBalancingComponentsSchemasIdResponseResult(id: $id)'; } 
 }
