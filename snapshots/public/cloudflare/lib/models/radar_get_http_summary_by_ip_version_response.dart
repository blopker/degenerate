// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_http_summary_by_ip_version_response_result.dart';final class RadarGetHttpSummaryByIpVersionResponse {const RadarGetHttpSummaryByIpVersionResponse({required this.result, required this.success, });

factory RadarGetHttpSummaryByIpVersionResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByIpVersionResponse(
  result: RadarGetHttpSummaryByIpVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpSummaryByIpVersionResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpSummaryByIpVersionResponse copyWith({RadarGetHttpSummaryByIpVersionResponseResult? result, bool? success, }) { return RadarGetHttpSummaryByIpVersionResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByIpVersionResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpSummaryByIpVersionResponse(result: $result, success: $success)'; } 
 }
