// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_pool.dart';@immutable final class LoadBalancingSchemasSingleResponse {const LoadBalancingSchemasSingleResponse({this.result});

factory LoadBalancingSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return LoadBalancingSchemasSingleResponse(
  result: json['result'] != null ? LoadBalancingPool.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LoadBalancingPool? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingSchemasSingleResponse copyWith({LoadBalancingPool Function()? result}) { return LoadBalancingSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LoadBalancingSchemasSingleResponse(result: $result)'; } 
 }
