// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bots_timeseries_response_result.dart';@immutable final class RadarGetBotsTimeseriesResponse {const RadarGetBotsTimeseriesResponse({required this.result, required this.success, });

factory RadarGetBotsTimeseriesResponse.fromJson(Map<String, dynamic> json) { return RadarGetBotsTimeseriesResponse(
  result: RadarGetBotsTimeseriesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetBotsTimeseriesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetBotsTimeseriesResponse copyWith({RadarGetBotsTimeseriesResponseResult? result, bool? success, }) { return RadarGetBotsTimeseriesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotsTimeseriesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetBotsTimeseriesResponse(result: $result, success: $success)'; } 
 }
