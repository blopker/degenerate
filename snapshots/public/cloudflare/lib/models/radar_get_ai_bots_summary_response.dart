// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_ai_bots_summary_response_result.dart';final class RadarGetAiBotsSummaryResponse {const RadarGetAiBotsSummaryResponse({required this.result, required this.success, });

factory RadarGetAiBotsSummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetAiBotsSummaryResponse(
  result: RadarGetAiBotsSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAiBotsSummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAiBotsSummaryResponse copyWith({RadarGetAiBotsSummaryResponseResult? result, bool? success, }) { return RadarGetAiBotsSummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiBotsSummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAiBotsSummaryResponse(result: $result, success: $success)'; } 
 }
