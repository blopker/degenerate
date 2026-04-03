// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_summary_by_operating_system_response_result.dart';@immutable final class RadarGetHttpSummaryByOperatingSystemResponse {const RadarGetHttpSummaryByOperatingSystemResponse({required this.result, required this.success, });

factory RadarGetHttpSummaryByOperatingSystemResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByOperatingSystemResponse(
  result: RadarGetHttpSummaryByOperatingSystemResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpSummaryByOperatingSystemResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpSummaryByOperatingSystemResponse copyWith({RadarGetHttpSummaryByOperatingSystemResponseResult? result, bool? success, }) { return RadarGetHttpSummaryByOperatingSystemResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByOperatingSystemResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpSummaryByOperatingSystemResponse(result: $result, success: $success)'; } 
 }
