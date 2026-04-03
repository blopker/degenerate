// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_response_result.dart';@immutable final class RadarGetEmailSecuritySummaryResponse {const RadarGetEmailSecuritySummaryResponse({required this.result, required this.success, });

factory RadarGetEmailSecuritySummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryResponse(
  result: RadarGetEmailSecuritySummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailSecuritySummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailSecuritySummaryResponse copyWith({RadarGetEmailSecuritySummaryResponseResult? result, bool? success, }) { return RadarGetEmailSecuritySummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryResponse(result: $result, success: $success)'; } 
 }
