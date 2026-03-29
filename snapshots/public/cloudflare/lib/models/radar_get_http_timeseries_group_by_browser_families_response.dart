// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_http_timeseries_group_by_browser_families_response_result.dart';final class RadarGetHttpTimeseriesGroupByBrowserFamiliesResponse {const RadarGetHttpTimeseriesGroupByBrowserFamiliesResponse({required this.result, required this.success, });

factory RadarGetHttpTimeseriesGroupByBrowserFamiliesResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByBrowserFamiliesResponse(
  result: RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpTimeseriesGroupByBrowserFamiliesResponse copyWith({RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult? result, bool? success, }) { return RadarGetHttpTimeseriesGroupByBrowserFamiliesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByBrowserFamiliesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBrowserFamiliesResponse(result: $result, success: $success)'; } 
 }
