// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_analytics.dart';final class LoadBalancingComponentsSchemasResponseCollection {const LoadBalancingComponentsSchemasResponseCollection({this.result});

factory LoadBalancingComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return LoadBalancingComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => LoadBalancingAnalytics.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<LoadBalancingAnalytics>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LoadBalancingComponentsSchemasResponseCollection copyWith({List<LoadBalancingAnalytics> Function()? result}) { return LoadBalancingComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'LoadBalancingComponentsSchemasResponseCollection(result: $result)'; } 
 }
