// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_pool.dart';final class LoadBalancingSchemasResponseCollection {const LoadBalancingSchemasResponseCollection({this.result});

factory LoadBalancingSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return LoadBalancingSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => LoadBalancingPool.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<LoadBalancingPool>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingSchemasResponseCollection copyWith({List<LoadBalancingPool> Function()? result}) { return LoadBalancingSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'LoadBalancingSchemasResponseCollection(result: $result)'; } 
 }
