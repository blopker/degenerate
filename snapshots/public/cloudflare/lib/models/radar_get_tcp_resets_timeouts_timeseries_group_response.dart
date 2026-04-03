// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_tcp_resets_timeouts_timeseries_group_response_result.dart';@immutable final class RadarGetTcpResetsTimeoutsTimeseriesGroupResponse {const RadarGetTcpResetsTimeoutsTimeseriesGroupResponse({required this.result, required this.success, });

factory RadarGetTcpResetsTimeoutsTimeseriesGroupResponse.fromJson(Map<String, dynamic> json) { return RadarGetTcpResetsTimeoutsTimeseriesGroupResponse(
  result: RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetTcpResetsTimeoutsTimeseriesGroupResponse copyWith({RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResult? result, bool? success, }) { return RadarGetTcpResetsTimeoutsTimeseriesGroupResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTcpResetsTimeoutsTimeseriesGroupResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetTcpResetsTimeoutsTimeseriesGroupResponse(result: $result, success: $success)'; } 
 }
