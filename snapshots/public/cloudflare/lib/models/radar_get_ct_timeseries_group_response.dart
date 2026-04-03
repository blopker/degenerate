// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ct_timeseries_group_response_result.dart';@immutable final class RadarGetCtTimeseriesGroupResponse {const RadarGetCtTimeseriesGroupResponse({required this.result, required this.success, });

factory RadarGetCtTimeseriesGroupResponse.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesGroupResponse(
  result: RadarGetCtTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetCtTimeseriesGroupResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetCtTimeseriesGroupResponse copyWith({RadarGetCtTimeseriesGroupResponseResult? result, bool? success, }) { return RadarGetCtTimeseriesGroupResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesGroupResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponse(result: $result, success: $success)'; } 
 }
