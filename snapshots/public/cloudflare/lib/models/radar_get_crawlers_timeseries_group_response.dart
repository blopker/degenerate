// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_crawlers_timeseries_group_response_result.dart';final class RadarGetCrawlersTimeseriesGroupResponse {const RadarGetCrawlersTimeseriesGroupResponse({required this.result, required this.success, });

factory RadarGetCrawlersTimeseriesGroupResponse.fromJson(Map<String, dynamic> json) { return RadarGetCrawlersTimeseriesGroupResponse(
  result: RadarGetCrawlersTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetCrawlersTimeseriesGroupResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetCrawlersTimeseriesGroupResponse copyWith({RadarGetCrawlersTimeseriesGroupResponseResult? result, bool? success, }) { return RadarGetCrawlersTimeseriesGroupResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCrawlersTimeseriesGroupResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetCrawlersTimeseriesGroupResponse(result: $result, success: $success)'; } 
 }
