// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_summary_by_response_code_response_result.dart';final class RadarGetDnsSummaryByResponseCodeResponse {const RadarGetDnsSummaryByResponseCodeResponse({required this.result, required this.success, });

factory RadarGetDnsSummaryByResponseCodeResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByResponseCodeResponse(
  result: RadarGetDnsSummaryByResponseCodeResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsSummaryByResponseCodeResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsSummaryByResponseCodeResponse copyWith({RadarGetDnsSummaryByResponseCodeResponseResult? result, bool? success, }) { return RadarGetDnsSummaryByResponseCodeResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByResponseCodeResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsSummaryByResponseCodeResponse(result: $result, success: $success)'; } 
 }
