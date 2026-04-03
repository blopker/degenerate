// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_origin_post_quantum_summary_response_result.dart';@immutable final class RadarGetOriginPostQuantumSummaryResponse {const RadarGetOriginPostQuantumSummaryResponse({required this.result, required this.success, });

factory RadarGetOriginPostQuantumSummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetOriginPostQuantumSummaryResponse(
  result: RadarGetOriginPostQuantumSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetOriginPostQuantumSummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetOriginPostQuantumSummaryResponse copyWith({RadarGetOriginPostQuantumSummaryResponseResult? result, bool? success, }) { return RadarGetOriginPostQuantumSummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginPostQuantumSummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetOriginPostQuantumSummaryResponse(result: $result, success: $success)'; } 
 }
