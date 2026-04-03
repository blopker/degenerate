// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_timeseries_group_by_http_protocol_response_result.dart';@immutable final class RadarGetHttpTimeseriesGroupByHttpProtocolResponse {const RadarGetHttpTimeseriesGroupByHttpProtocolResponse({required this.result, required this.success, });

factory RadarGetHttpTimeseriesGroupByHttpProtocolResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByHttpProtocolResponse(
  result: RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpTimeseriesGroupByHttpProtocolResponse copyWith({RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult? result, bool? success, }) { return RadarGetHttpTimeseriesGroupByHttpProtocolResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByHttpProtocolResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpProtocolResponse(result: $result, success: $success)'; } 
 }
