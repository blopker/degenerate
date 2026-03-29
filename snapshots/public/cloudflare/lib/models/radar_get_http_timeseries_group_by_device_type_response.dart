// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_http_timeseries_group_by_device_type_response_result.dart';final class RadarGetHttpTimeseriesGroupByDeviceTypeResponse {const RadarGetHttpTimeseriesGroupByDeviceTypeResponse({required this.result, required this.success, });

factory RadarGetHttpTimeseriesGroupByDeviceTypeResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByDeviceTypeResponse(
  result: RadarGetHttpTimeseriesGroupByDeviceTypeResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpTimeseriesGroupByDeviceTypeResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpTimeseriesGroupByDeviceTypeResponse copyWith({RadarGetHttpTimeseriesGroupByDeviceTypeResponseResult? result, bool? success, }) { return RadarGetHttpTimeseriesGroupByDeviceTypeResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByDeviceTypeResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByDeviceTypeResponse(result: $result, success: $success)'; } 
 }
