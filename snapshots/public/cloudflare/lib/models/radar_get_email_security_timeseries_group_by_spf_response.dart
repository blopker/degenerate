// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_timeseries_group_by_spf_response_result.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupBySpfResponse {const RadarGetEmailSecurityTimeseriesGroupBySpfResponse({required this.result, required this.success, });

factory RadarGetEmailSecurityTimeseriesGroupBySpfResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupBySpfResponse(
  result: RadarGetEmailSecurityTimeseriesGroupBySpfResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailSecurityTimeseriesGroupBySpfResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailSecurityTimeseriesGroupBySpfResponse copyWith({RadarGetEmailSecurityTimeseriesGroupBySpfResponseResult? result, bool? success, }) { return RadarGetEmailSecurityTimeseriesGroupBySpfResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupBySpfResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpfResponse(result: $result, success: $success)'; } 
 }
