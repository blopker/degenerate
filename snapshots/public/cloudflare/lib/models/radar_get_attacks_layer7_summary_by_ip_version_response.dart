// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer7_summary_by_ip_version_response_result.dart';@immutable final class RadarGetAttacksLayer7SummaryByIpVersionResponse {const RadarGetAttacksLayer7SummaryByIpVersionResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer7SummaryByIpVersionResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7SummaryByIpVersionResponse(
  result: RadarGetAttacksLayer7SummaryByIpVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer7SummaryByIpVersionResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer7SummaryByIpVersionResponse copyWith({RadarGetAttacksLayer7SummaryByIpVersionResponseResult? result, bool? success, }) { return RadarGetAttacksLayer7SummaryByIpVersionResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7SummaryByIpVersionResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByIpVersionResponse(result: $result, success: $success)'; } 
 }
