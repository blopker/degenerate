// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_netflows_summary_response_result.dart';@immutable final class RadarGetNetflowsSummaryResponse {const RadarGetNetflowsSummaryResponse({required this.result, required this.success, });

factory RadarGetNetflowsSummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetNetflowsSummaryResponse(
  result: RadarGetNetflowsSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetNetflowsSummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetNetflowsSummaryResponse copyWith({RadarGetNetflowsSummaryResponseResult? result, bool? success, }) { return RadarGetNetflowsSummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetNetflowsSummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetNetflowsSummaryResponse(result: $result, success: $success)'; } 
 }
