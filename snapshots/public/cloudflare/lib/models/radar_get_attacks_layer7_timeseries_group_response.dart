// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer7_timeseries_group_response_result.dart';@immutable final class RadarGetAttacksLayer7TimeseriesGroupResponse {const RadarGetAttacksLayer7TimeseriesGroupResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer7TimeseriesGroupResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TimeseriesGroupResponse(
  result: RadarGetAttacksLayer7TimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer7TimeseriesGroupResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer7TimeseriesGroupResponse copyWith({RadarGetAttacksLayer7TimeseriesGroupResponseResult? result, bool? success, }) { return RadarGetAttacksLayer7TimeseriesGroupResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TimeseriesGroupResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupResponse(result: $result, success: $success)'; } 
 }
