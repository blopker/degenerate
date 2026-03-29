// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_attacks_layer3_summary_by_protocol_response_result.dart';final class RadarGetAttacksLayer3SummaryByProtocolResponse {const RadarGetAttacksLayer3SummaryByProtocolResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer3SummaryByProtocolResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByProtocolResponse(
  result: RadarGetAttacksLayer3SummaryByProtocolResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer3SummaryByProtocolResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer3SummaryByProtocolResponse copyWith({RadarGetAttacksLayer3SummaryByProtocolResponseResult? result, bool? success, }) { return RadarGetAttacksLayer3SummaryByProtocolResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByProtocolResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByProtocolResponse(result: $result, success: $success)'; } 
 }
