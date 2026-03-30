// GENERATED CODE - DO NOT MODIFY BY HAND

import 'load_balancing_load_balancer.dart';final class LoadBalancingLoadBalancerComponentsSchemasSingleResponse {const LoadBalancingLoadBalancerComponentsSchemasSingleResponse({this.result});

factory LoadBalancingLoadBalancerComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingLoadBalancerComponentsSchemasSingleResponse(
  result: json['result'] != null ? LoadBalancingLoadBalancer.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LoadBalancingLoadBalancer? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingLoadBalancerComponentsSchemasSingleResponse copyWith({LoadBalancingLoadBalancer Function()? result}) { return LoadBalancingLoadBalancerComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingLoadBalancerComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LoadBalancingLoadBalancerComponentsSchemasSingleResponse(result: $result)'; } 
 }
