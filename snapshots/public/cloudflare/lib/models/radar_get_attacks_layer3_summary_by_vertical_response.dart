// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_attacks_layer3_summary_by_vertical_response_result.dart';final class RadarGetAttacksLayer3SummaryByVerticalResponse {const RadarGetAttacksLayer3SummaryByVerticalResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer3SummaryByVerticalResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByVerticalResponse(
  result: RadarGetAttacksLayer3SummaryByVerticalResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer3SummaryByVerticalResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer3SummaryByVerticalResponse copyWith({RadarGetAttacksLayer3SummaryByVerticalResponseResult? result, bool? success, }) { return RadarGetAttacksLayer3SummaryByVerticalResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByVerticalResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByVerticalResponse(result: $result, success: $success)'; } 
 }
