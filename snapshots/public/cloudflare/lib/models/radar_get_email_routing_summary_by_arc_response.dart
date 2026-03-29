// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_email_routing_summary_by_arc_response_result.dart';final class RadarGetEmailRoutingSummaryByArcResponse {const RadarGetEmailRoutingSummaryByArcResponse({required this.result, required this.success, });

factory RadarGetEmailRoutingSummaryByArcResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryByArcResponse(
  result: RadarGetEmailRoutingSummaryByArcResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailRoutingSummaryByArcResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailRoutingSummaryByArcResponse copyWith({RadarGetEmailRoutingSummaryByArcResponseResult? result, bool? success, }) { return RadarGetEmailRoutingSummaryByArcResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryByArcResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByArcResponse(result: $result, success: $success)'; } 
 }
