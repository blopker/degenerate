// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_as112_summary_response_result.dart';final class RadarGetDnsAs112SummaryResponse {const RadarGetDnsAs112SummaryResponse({required this.result, required this.success, });

factory RadarGetDnsAs112SummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112SummaryResponse(
  result: RadarGetDnsAs112SummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsAs112SummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsAs112SummaryResponse copyWith({RadarGetDnsAs112SummaryResponseResult? result, bool? success, }) { return RadarGetDnsAs112SummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112SummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsAs112SummaryResponse(result: $result, success: $success)'; } 
 }
