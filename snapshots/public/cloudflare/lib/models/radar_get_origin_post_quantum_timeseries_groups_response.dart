// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_origin_post_quantum_timeseries_groups_response_result.dart';final class RadarGetOriginPostQuantumTimeseriesGroupsResponse {const RadarGetOriginPostQuantumTimeseriesGroupsResponse({required this.result, required this.success, });

factory RadarGetOriginPostQuantumTimeseriesGroupsResponse.fromJson(Map<String, dynamic> json) { return RadarGetOriginPostQuantumTimeseriesGroupsResponse(
  result: RadarGetOriginPostQuantumTimeseriesGroupsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetOriginPostQuantumTimeseriesGroupsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetOriginPostQuantumTimeseriesGroupsResponse copyWith({RadarGetOriginPostQuantumTimeseriesGroupsResponseResult? result, bool? success, }) { return RadarGetOriginPostQuantumTimeseriesGroupsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginPostQuantumTimeseriesGroupsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetOriginPostQuantumTimeseriesGroupsResponse(result: $result, success: $success)'; } 
 }
