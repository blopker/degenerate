// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_quality_speed_top_ases_response_result.dart';@immutable final class RadarGetQualitySpeedTopAsesResponse {const RadarGetQualitySpeedTopAsesResponse({required this.result, required this.success, });

factory RadarGetQualitySpeedTopAsesResponse.fromJson(Map<String, dynamic> json) { return RadarGetQualitySpeedTopAsesResponse(
  result: RadarGetQualitySpeedTopAsesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetQualitySpeedTopAsesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetQualitySpeedTopAsesResponse copyWith({RadarGetQualitySpeedTopAsesResponseResult? result, bool? success, }) { return RadarGetQualitySpeedTopAsesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualitySpeedTopAsesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetQualitySpeedTopAsesResponse(result: $result, success: $success)'; } 
 }
