// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_spf_response_result.dart';@immutable final class RadarGetEmailSecuritySummaryBySpfResponse {const RadarGetEmailSecuritySummaryBySpfResponse({required this.result, required this.success, });

factory RadarGetEmailSecuritySummaryBySpfResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryBySpfResponse(
  result: RadarGetEmailSecuritySummaryBySpfResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailSecuritySummaryBySpfResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailSecuritySummaryBySpfResponse copyWith({RadarGetEmailSecuritySummaryBySpfResponseResult? result, bool? success, }) { return RadarGetEmailSecuritySummaryBySpfResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryBySpfResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpfResponse(result: $result, success: $success)'; } 
 }
