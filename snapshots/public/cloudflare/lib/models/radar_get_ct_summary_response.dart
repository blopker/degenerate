// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_ct_summary_response_result.dart';final class RadarGetCtSummaryResponse {const RadarGetCtSummaryResponse({required this.result, required this.success, });

factory RadarGetCtSummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetCtSummaryResponse(
  result: RadarGetCtSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetCtSummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetCtSummaryResponse copyWith({RadarGetCtSummaryResponseResult? result, bool? success, }) { return RadarGetCtSummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtSummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetCtSummaryResponse(result: $result, success: $success)'; } 
 }
