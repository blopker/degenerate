// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_email_routing_timeseries_group_response_result.dart';final class RadarGetEmailRoutingTimeseriesGroupResponse {const RadarGetEmailRoutingTimeseriesGroupResponse({required this.result, required this.success, });

factory RadarGetEmailRoutingTimeseriesGroupResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupResponse(
  result: RadarGetEmailRoutingTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailRoutingTimeseriesGroupResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailRoutingTimeseriesGroupResponse copyWith({RadarGetEmailRoutingTimeseriesGroupResponseResult? result, bool? success, }) { return RadarGetEmailRoutingTimeseriesGroupResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupResponse(result: $result, success: $success)'; } 
 }
