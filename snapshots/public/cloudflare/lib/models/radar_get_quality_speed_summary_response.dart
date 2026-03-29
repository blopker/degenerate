// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_quality_speed_summary_response_result.dart';final class RadarGetQualitySpeedSummaryResponse {const RadarGetQualitySpeedSummaryResponse({required this.result, required this.success, });

factory RadarGetQualitySpeedSummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetQualitySpeedSummaryResponse(
  result: RadarGetQualitySpeedSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetQualitySpeedSummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetQualitySpeedSummaryResponse copyWith({RadarGetQualitySpeedSummaryResponseResult? result, bool? success, }) { return RadarGetQualitySpeedSummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualitySpeedSummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetQualitySpeedSummaryResponse(result: $result, success: $success)'; } 
 }
