// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_attacks_layer7_summary_by_mitigation_product_response_result.dart';final class RadarGetAttacksLayer7SummaryByMitigationProductResponse {const RadarGetAttacksLayer7SummaryByMitigationProductResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer7SummaryByMitigationProductResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7SummaryByMitigationProductResponse(
  result: RadarGetAttacksLayer7SummaryByMitigationProductResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer7SummaryByMitigationProductResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer7SummaryByMitigationProductResponse copyWith({RadarGetAttacksLayer7SummaryByMitigationProductResponseResult? result, bool? success, }) { return RadarGetAttacksLayer7SummaryByMitigationProductResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7SummaryByMitigationProductResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByMitigationProductResponse(result: $result, success: $success)'; } 
 }
