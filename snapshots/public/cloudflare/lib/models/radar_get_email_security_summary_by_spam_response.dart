// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_email_security_summary_by_spam_response_result.dart';final class RadarGetEmailSecuritySummaryBySpamResponse {const RadarGetEmailSecuritySummaryBySpamResponse({required this.result, required this.success, });

factory RadarGetEmailSecuritySummaryBySpamResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryBySpamResponse(
  result: RadarGetEmailSecuritySummaryBySpamResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailSecuritySummaryBySpamResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailSecuritySummaryBySpamResponse copyWith({RadarGetEmailSecuritySummaryBySpamResponseResult? result, bool? success, }) { return RadarGetEmailSecuritySummaryBySpamResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryBySpamResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpamResponse(result: $result, success: $success)'; } 
 }
