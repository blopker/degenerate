// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_leaked_credential_checks_summary_response_result.dart';final class RadarGetLeakedCredentialChecksSummaryResponse {const RadarGetLeakedCredentialChecksSummaryResponse({required this.result, required this.success, });

factory RadarGetLeakedCredentialChecksSummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetLeakedCredentialChecksSummaryResponse(
  result: RadarGetLeakedCredentialChecksSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetLeakedCredentialChecksSummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetLeakedCredentialChecksSummaryResponse copyWith({RadarGetLeakedCredentialChecksSummaryResponseResult? result, bool? success, }) { return RadarGetLeakedCredentialChecksSummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetLeakedCredentialChecksSummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetLeakedCredentialChecksSummaryResponse(result: $result, success: $success)'; } 
 }
