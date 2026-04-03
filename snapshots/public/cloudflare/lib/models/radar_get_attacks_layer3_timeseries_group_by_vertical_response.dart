// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_timeseries_group_by_vertical_response_result.dart';@immutable final class RadarGetAttacksLayer3TimeseriesGroupByVerticalResponse {const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer3TimeseriesGroupByVerticalResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesGroupByVerticalResponse(
  result: RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer3TimeseriesGroupByVerticalResponse copyWith({RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResult? result, bool? success, }) { return RadarGetAttacksLayer3TimeseriesGroupByVerticalResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesGroupByVerticalResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByVerticalResponse(result: $result, success: $success)'; } 
 }
