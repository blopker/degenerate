// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rate_plan.dart';final class PlanResponseCollection {const PlanResponseCollection({this.result});

factory PlanResponseCollection.fromJson(Map<String, dynamic> json) { return PlanResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => RatePlan.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RatePlan>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PlanResponseCollection copyWith({List<RatePlan> Function()? result}) { return PlanResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PlanResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'PlanResponseCollection(result: $result)'; } 
 }
