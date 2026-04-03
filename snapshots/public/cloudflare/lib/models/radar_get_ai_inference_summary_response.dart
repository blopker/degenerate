// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_inference_summary_response_result.dart';@immutable final class RadarGetAiInferenceSummaryResponse {const RadarGetAiInferenceSummaryResponse({required this.result, required this.success, });

factory RadarGetAiInferenceSummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceSummaryResponse(
  result: RadarGetAiInferenceSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAiInferenceSummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAiInferenceSummaryResponse copyWith({RadarGetAiInferenceSummaryResponseResult? result, bool? success, }) { return RadarGetAiInferenceSummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceSummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAiInferenceSummaryResponse(result: $result, success: $success)'; } 
 }
