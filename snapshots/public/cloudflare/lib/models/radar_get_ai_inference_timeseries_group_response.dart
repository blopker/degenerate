// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_inference_timeseries_group_response_result.dart';@immutable final class RadarGetAiInferenceTimeseriesGroupResponse {const RadarGetAiInferenceTimeseriesGroupResponse({required this.result, required this.success, });

factory RadarGetAiInferenceTimeseriesGroupResponse.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceTimeseriesGroupResponse(
  result: RadarGetAiInferenceTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAiInferenceTimeseriesGroupResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAiInferenceTimeseriesGroupResponse copyWith({RadarGetAiInferenceTimeseriesGroupResponseResult? result, bool? success, }) { return RadarGetAiInferenceTimeseriesGroupResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceTimeseriesGroupResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupResponse(result: $result, success: $success)'; } 
 }
