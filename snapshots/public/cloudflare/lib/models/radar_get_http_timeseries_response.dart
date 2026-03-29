// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_http_timeseries_response_result.dart';final class RadarGetHttpTimeseriesResponse {const RadarGetHttpTimeseriesResponse({required this.result, required this.success, });

factory RadarGetHttpTimeseriesResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesResponse(
  result: RadarGetHttpTimeseriesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpTimeseriesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpTimeseriesResponse copyWith({RadarGetHttpTimeseriesResponseResult? result, bool? success, }) { return RadarGetHttpTimeseriesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpTimeseriesResponse(result: $result, success: $success)'; } 
 }
