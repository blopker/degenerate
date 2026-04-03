// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_summary_by_dkim_response_result.dart';@immutable final class RadarGetEmailRoutingSummaryByDkimResponse {const RadarGetEmailRoutingSummaryByDkimResponse({required this.result, required this.success, });

factory RadarGetEmailRoutingSummaryByDkimResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryByDkimResponse(
  result: RadarGetEmailRoutingSummaryByDkimResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailRoutingSummaryByDkimResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailRoutingSummaryByDkimResponse copyWith({RadarGetEmailRoutingSummaryByDkimResponseResult? result, bool? success, }) { return RadarGetEmailRoutingSummaryByDkimResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryByDkimResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByDkimResponse(result: $result, success: $success)'; } 
 }
