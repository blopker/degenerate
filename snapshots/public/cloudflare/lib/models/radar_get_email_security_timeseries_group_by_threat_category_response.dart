// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_timeseries_group_by_threat_category_response_result.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponse {const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponse({required this.result, required this.success, });

factory RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponse(
  result: RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponse copyWith({RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResult? result, bool? success, }) { return RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponse(result: $result, success: $success)'; } 
 }
