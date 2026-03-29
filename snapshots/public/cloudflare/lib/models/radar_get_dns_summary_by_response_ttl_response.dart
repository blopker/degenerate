// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_summary_by_response_ttl_response_result.dart';final class RadarGetDnsSummaryByResponseTtlResponse {const RadarGetDnsSummaryByResponseTtlResponse({required this.result, required this.success, });

factory RadarGetDnsSummaryByResponseTtlResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByResponseTtlResponse(
  result: RadarGetDnsSummaryByResponseTtlResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsSummaryByResponseTtlResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsSummaryByResponseTtlResponse copyWith({RadarGetDnsSummaryByResponseTtlResponseResult? result, bool? success, }) { return RadarGetDnsSummaryByResponseTtlResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByResponseTtlResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsSummaryByResponseTtlResponse(result: $result, success: $success)'; } 
 }
