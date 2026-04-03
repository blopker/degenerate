// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_bots_timeseries_response_result.dart';@immutable final class RadarGetAiBotsTimeseriesResponse {const RadarGetAiBotsTimeseriesResponse({required this.result, required this.success, });

factory RadarGetAiBotsTimeseriesResponse.fromJson(Map<String, dynamic> json) { return RadarGetAiBotsTimeseriesResponse(
  result: RadarGetAiBotsTimeseriesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAiBotsTimeseriesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAiBotsTimeseriesResponse copyWith({RadarGetAiBotsTimeseriesResponseResult? result, bool? success, }) { return RadarGetAiBotsTimeseriesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiBotsTimeseriesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAiBotsTimeseriesResponse(result: $result, success: $success)'; } 
 }
