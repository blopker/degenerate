// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_health_details_result.dart';@immutable final class LoadBalancingHealthDetails {const LoadBalancingHealthDetails({this.result});

factory LoadBalancingHealthDetails.fromJson(Map<String, dynamic> json) { return LoadBalancingHealthDetails(
  result: json['result'] != null ? LoadBalancingHealthDetailsResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

/// A list of regions from which to run health checks. Null means every Cloudflare data center.
final LoadBalancingHealthDetailsResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingHealthDetails copyWith({LoadBalancingHealthDetailsResult Function()? result}) { return LoadBalancingHealthDetails(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingHealthDetails &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LoadBalancingHealthDetails(result: $result)'; } 
 }
