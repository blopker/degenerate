// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer7_timeseries_group_by_managed_rules_response_result.dart';@immutable final class RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponse {const RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponse(
  result: RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponse copyWith({RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponseResult? result, bool? success, }) { return RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByManagedRulesResponse(result: $result, success: $success)'; } 
 }
