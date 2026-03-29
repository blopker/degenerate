// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_netflows_timeseries_group_response_result.dart';final class RadarGetNetflowsTimeseriesGroupResponse {const RadarGetNetflowsTimeseriesGroupResponse({required this.result, required this.success, });

factory RadarGetNetflowsTimeseriesGroupResponse.fromJson(Map<String, dynamic> json) { return RadarGetNetflowsTimeseriesGroupResponse(
  result: RadarGetNetflowsTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetNetflowsTimeseriesGroupResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetNetflowsTimeseriesGroupResponse copyWith({RadarGetNetflowsTimeseriesGroupResponseResult? result, bool? success, }) { return RadarGetNetflowsTimeseriesGroupResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetNetflowsTimeseriesGroupResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetNetflowsTimeseriesGroupResponse(result: $result, success: $success)'; } 
 }
