// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'available_rate_plan.dart';@immutable final class ZoneRatePlanAvailablePlanDetailsResponse {const ZoneRatePlanAvailablePlanDetailsResponse({this.result});

factory ZoneRatePlanAvailablePlanDetailsResponse.fromJson(Map<String, dynamic> json) { return ZoneRatePlanAvailablePlanDetailsResponse(
  result: json['result'] != null ? AvailableRatePlan.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AvailableRatePlan? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZoneRatePlanAvailablePlanDetailsResponse copyWith({AvailableRatePlan Function()? result}) { return ZoneRatePlanAvailablePlanDetailsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneRatePlanAvailablePlanDetailsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZoneRatePlanAvailablePlanDetailsResponse(result: $result)'; } 
 }
