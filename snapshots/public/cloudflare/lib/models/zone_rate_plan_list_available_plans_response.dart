// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'available_rate_plan.dart';@immutable final class ZoneRatePlanListAvailablePlansResponse {const ZoneRatePlanListAvailablePlansResponse({this.result});

factory ZoneRatePlanListAvailablePlansResponse.fromJson(Map<String, dynamic> json) { return ZoneRatePlanListAvailablePlansResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => AvailableRatePlan.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AvailableRatePlan>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZoneRatePlanListAvailablePlansResponse copyWith({List<AvailableRatePlan> Function()? result}) { return ZoneRatePlanListAvailablePlansResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneRatePlanListAvailablePlansResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ZoneRatePlanListAvailablePlansResponse(result: $result)'; } 
 }
